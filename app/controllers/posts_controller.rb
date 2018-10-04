class PostsController < ApplicationController
  # GET /posts
  def index
    @posts = Post.all
    #code
  end

  # GET /posts/new
  def new
    #code
    @post = Post.new
  end

  # POST /posts/create
  def create
    #code
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      logger.warn("バリデータ警告 #{post_params[:title]}")
      render :new, status: :unprocessable_entity
    end
  end

  # GET /posts/show
  def show
    @post = Post.where(id: params[:id])
  end

  private

  def post_params
    params.require(:post).permit(%i(title text))
    #code
  end
end
