class SessionsController < ApplicationController
    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            render json: {user: user, session: session}
        elsif user
            render json: { errors: "Password incorrect" }, status: :unprocessable_entity
        else
            render json: { errors: "User does not exist" }, status: :unprocessable_entity
        end

    end
end
