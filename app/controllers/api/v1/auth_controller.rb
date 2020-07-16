class Api::V1::AuthController < ApplicationController
    skip_before_action :logged_in?

    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            render json: user
        else
            render json: user.errors, status: :unprocessable_entity
        end
    end
end
