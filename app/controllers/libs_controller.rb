class LibsController < ActionController::API
    def index
        render json: {lib: Lib.all}
    end
    def create
        # @user = User.new(user_data)
        # @user.save!
        begin
            @lib = Lib.new(lib_data)
            @lib.save!
            return render json: {message: "Library Created"}, status: :ok
        rescue
            return render json: {message: @lib.errors}, status: :unprocessable_entity
        end
    end

    def fetch_data
        @time = Time.Zone.new.begening_of_month
        Lib.join(:books).where(books: {published_at: @time..})
    end
    def display 
        @library_name = params[:library_name]
        @library = Lib.find_by(name: @library_name)
        @books = @library&.books
        unless @books.present?
            return render json: {message: "No books are present"}, status: 404
        end
        # @books.each do |book|
        #     puts "Title: #{book.title}, published_at: #{book.published_at}, language: #{book.language}"
        #     render json: book
        # end
        render json: @books

    end

    
    def Show
        @lib = Lib.find params[:id]
        return render json: {lib: @lib}

    end

    private
    def lib_data
        params.require(:libs).permit(:name, :opening_time, :closing_time, :user_id)
    
    end
end
