class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = get_post
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(title: params[:post][:title],
                    body: params[:post][:body])
    @post.save!
  end

  def edit
    @post = get_post
  end

  def update
    Post.update(params[:id], post_params)
  end

  def destroy
    @post = get_post
    @post.destroy
  end

private
  def get_post
    Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
