class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def new
        @user = User.new

    end

    def show
        @user = User.find_by_id(params[:id])

    end
    
    def create
        @user = User.create(user_params)
        redirect_to "/"
    end

    def edit
        @user = User.find_by_id(params[:id])

    end

    def update
        redirect_to "/"
    end

    def destroy
        redirect_to "/"
    end

    private

    def user_params 
        params.require(:user).permit(:first_name, :last_name, :email, :password)
    end


end
