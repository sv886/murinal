class PostsController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]

  before_action do
    @current_user = current_user
  end

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def post_params
    params.require(:post).permit(:photo, :description)
  end
end
