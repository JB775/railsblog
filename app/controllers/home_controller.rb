class HomeController < ApplicationController
  def homepage
  	@id = session[:user_id]
  	@myPosts = Post.where(user_id: @id)
  	@posts = Post.all
  end
end
