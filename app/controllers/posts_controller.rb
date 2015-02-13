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

  def edit
   @post = Post.find(params[:id])
  end

  def create
    post = Post.new(order_params)
      # respond_to do |format|
      if @post.save
        redirect_to posts_path
      else
        render 'new'
      end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(order_params)
      redirect_to posts_path
    else
        render 'edit'
    end
  end 

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path
  end

  
  private
    def set_post
      @post = Post.find(params[:id])
    end
    def order_params
      params.require(:post).permit(:title, :category,:teaser, :content)
    end
end
