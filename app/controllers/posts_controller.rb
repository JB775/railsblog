class PostsController < ApplicationController
  def index
  	@posts = Post.all.reverse

  end

  def new
    @post = Post.new
  end

  def create
    #puts "***********************"
    #puts params 

    title = params[:post][:title]
    content = params[:post][:content]
    id = session[:user_id]
    @Post = Post.create(title: title, content: content, user_id: id)

    # @post = Post.create(params.require(:post).permit(:title, :content, :user_id))
    flash[:notice] = "Post Successfully Created by User # #{id}"
    redirect_to root_path
  end

  def show
  	@post = Post.find(params[:id])
  	@comment = Comment.where(post_id: params[:id])
    #same as @comment but want to break it up for an easier read
    #@commentcomment = Commentoncomment.where(comment_id: params[:id])
    @counter = 0
    @counter2 = 0
    @newComment = Comment.new
    @newCommentonComment = Commentoncomment.new
  end
end
