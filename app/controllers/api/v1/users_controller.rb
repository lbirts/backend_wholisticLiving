class Api::V1::UsersController < ApplicationController
    skip_before_action :logged_in?, only: [:create, :index]
    before_action :set_user, only: [:show, :update, :destroy]

    def index
        @users = User.all
        render json: @users
    end

    def show
        render json: @user
    end

    def create
        @user = User.new(user_params)
        if @user.save
            @token = encode_token(user_id: @user.id)
            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created, location: @user
        else 
            render json: @user.errors, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /users/1
    def update
        if @user.update(user_params)
        render json: @user
        else
        render json: @user.errors, status: :unprocessable_entity
        end
    end

    # DELETE /users/1
    def destroy
        @user.destroy
    end


    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.permit(:name, :email, :password, :password_confirmation, :avator, :role)
    end
end
