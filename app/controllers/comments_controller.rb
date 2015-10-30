class CommentsController < ApplicationController


  def create

  	#puts "******************************"
  	#puts params

  	commentContent = params[:comment][:content]
  	id = session[:user_id]
  	#@postId = params[:hidden]
  	postId = params[:comment][:hidden]
  	@Comment = Comment.create(content: commentContent, user_id: id, post_id: postId) 


  	#redirect_to root_path
	redirect_to post_path postId

  end

  def anothercomment
      commentCommentContent = params[:commentoncomment][:content]
      id = session[:user_id]
      postId = params[:commentoncomment][:hidden]
      commentId = params[:commentoncomment][:hidden2]
      @Comment = Commentoncomment.create(content: commentCommentContent, user_id: id, comment_id: commentId, post_id: postId) 
      redirect_to post_path postId

  end


end
