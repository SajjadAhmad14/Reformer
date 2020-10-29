class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to :root
    else
      render :edit
    end
  end

  def index
    @users = User.all
  end

  private

  def user_params
    p params.require(:user).permit(:username, :email, :password)
  end
end
