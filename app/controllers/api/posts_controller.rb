class Api::PostsController < ApplicationController
  respond_to :json

  def index
    respond_with @posts = Post.all
  end

  def show
    @post = get_post
    respond_with @post
  rescue ActiveRecord::RecordNotFound
    error_not_found
  end

  def new
    respond_with @post = Post.new
  end

  def create
    respond_with @post = Post.new(title: params[:post][:title],
                                  body: params[:post][:body])
  end

  def edit
    respond_with @post
  rescue ActiveRecord::RecordNotFound
    error_not_found
  end

  def update
    @post.update(post_params)

    respond_with @post
  end

  def destroy
    @post.destroy

    respond_with @post.destroy

  rescue ActiveRecord::RecordNotFound
    error_not_found
  end

private
  def get_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def error_not_found
    render json: { message: "Not found", status: 404 }, status: 404
  end
end
