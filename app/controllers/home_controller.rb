class HomeController < ApplicationController
  def homepage
  	@id = session[:user_id]
  	@myPosts = Post.where(user_id: @id)
  	@posts = Post.all
  	if session[:user_id]
  	  @user = User.find(@id)
  	end
  	if !session[:user_id]
  	  render :layout => false
    end
  end
end
