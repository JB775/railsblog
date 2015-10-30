class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @posts = Post.where(user_id: @user.id)
    # puts params 
    # @searchedUser = User.where(username: :search) #add params inside parenthesis?

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
  
  def search
    puts "*************** PARAMS"
    puts params
    results = User.where(username: params[:search])
    if results.length == 0
      flash[:notice] = "No matches"
      redirect_to allusers_path
    elsif results.length == 1
      @user = results.first
      redirect_to user_path(@user)
    else 
      @user = results

    end

  end

end
