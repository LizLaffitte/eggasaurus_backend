class UsersController < ApplicationController
    wrap_parameters :user, include: [:username, :email, :password, :password_confirmation]
    def create
        user = User.new(user_params)
        if user.save
            session[:user_id] = user.id
            render json: {user: user, session: session}, status: :accepted
        else
            render json: { errors: user.errors.full_message }, status: :unprocessable_entity
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end
