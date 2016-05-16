module V1
  class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]

    def index
      @users = User.all
      respond_with_json @users
    end

    def show
      respond_with_json @user
    end

    def update
      @user.update(user_params)
      respond_with_json @user
    end

    def create
      @user = User.new(user_params)
      @user.save
      respond_with_json @user, status: :created, location: @user
    end

    def destroy
      respond_with_json @user.destroy
    end

    private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.permit(:email, :name, :password, :role)
    end

  end
end