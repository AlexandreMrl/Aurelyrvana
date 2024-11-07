class UsersController < ApplicationController
  before_action :user_params, only: [:show, :edit, :create, :destroy]

  def Index
    @users = User.all
  end

  def show
    @users = User.find(params[:id])
  end

  def new
    @users = User.new
    authorize @users
  end

  def create
    @users = User.new(user_params)
    authorize @users
    if users.save
      redirect_to users_path(@users), notice 'User was successfully created'
    else
      render :new
    end
  end

  def edit
    @users = User.find(params[:id])
  end
  private

  def destroy
    @users = User.find(params[:id])
    @users.destroy
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
