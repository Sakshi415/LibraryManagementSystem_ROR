class BooksController < ActionController::API
    def index
        @books = Book.all
        render json: @books, each_serializer: BookSerializer
    end
    def create
        # @user = User.new(user_data)
        # @user.save!
        begin
            # @book = Book.new(book_data)
            @book = Book.new(book_data)

            @book.save!
            return render json: {message: "Book Created"}, status: :ok
        rescue
            return render json: {message: @book.errors}, status: :unprocessable_entity
        end
    end
    
    

    
    def show
        @book = Book.find params[:id]
        return render json: {book: @book}

    end

    private
    def book_data
        params.require(:books).permit(:title, :published_at, :language, :lib_id)
    
    end
end
