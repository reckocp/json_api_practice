class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(title: params[:post][:title],
                    body: params[:post][:body])
    @user.save!
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    Post.update(params[:id], post_params)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end

private
  def post_params
    params.require(:post).permit(:title, :body)
  end

end
