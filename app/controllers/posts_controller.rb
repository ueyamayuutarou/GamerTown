class PostsController < ApplicationController
  def create
  	@post = Post.new(post_params)
  	if @post.user_id = current_user.id
  	@post.save
    redirect_to posts_path(@post), notice: "You have created book successfully."
    else
    render :new
  end
  end

  def index
  	@posts = Post.all
  end

  def new
  	@post = Post.new
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
