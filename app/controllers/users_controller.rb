class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params[:user][:name])
    @user.save!
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    User.update(params[:id], user_params)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

private

  def user_params
    params.require(:user).permit(:name)
  end
end
