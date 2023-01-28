class UsersController < ActionController::API
    def index
        render json: {user: User.all}
    end
    def create
        # @user = User.new(user_data)
        # @user.save!
        begin
            @user = User.new(user_data)
            @user.save!
            return render json: {message: "User Created"}, status: :ok
        rescue
            return render json: {message: @user.errors}, status: :unprocessable_entity
        end
    end

    def test
        return render json: {message: "User Test"}, status: :ok
    end
    
    def show
        @user = User.find params[:id]
        return render json: {user: @user}

    end

    private
    def user_data
        params.require(:users).permit(:name, :email, :password)
    
    end
end
