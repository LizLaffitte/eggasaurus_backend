class UsersController < ApplicationController
    def create
        user = User.new(user_params)
        if user.save
            puts user
        else
            puts "Something went wrong"
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end
