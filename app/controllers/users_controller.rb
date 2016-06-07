class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create!(create_params)
    redirect_to action: :index
  end

  private

  def create_params
    params.permit(user: [:name, :profile_image])[:user]
  end
end