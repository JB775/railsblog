class SessionsController < ApplicationController

  def new
  end

  def create
    params[:username]
    params[:password]

    @user = User.where(username: params[:username]).first
    
    if @user 
      if @user.password == params[:password] 
        session[:user_id] = @user.id
        flash[:notice] = "Hello #{@user.username}!"
        redirect_to root_path
      else
        flash[:alert] = "Login Not Successful, Please Try Again"
        redirect_to root_path
      end
    else
      flash[:alert] = "Login Not Successful, Please Try Again"
      redirect_to root_path
    end
  end	

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Successfully Logged Out"
    redirect_to root_path
  end

end