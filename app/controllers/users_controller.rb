class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    @user.update(params.require(:user).permit(:username, :password, :favcolor))
    flash[:notice] = "User Successfully Updated"
    redirect_to user_path(@user)
  end
  def contact
  end

  def delete
    @user = User.find(params[:id]) 
    @user.delete
    redirect_to root_path
    flash[:notice] = 'User Deleted!'
  end
  def create
    @user = User.create(params.require(:user).permit(:username, :password, :favcolor))
    flash[:notice] = "User Successfully Created"
    redirect_to user_path(@user)
  end
end
