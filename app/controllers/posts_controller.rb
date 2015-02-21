class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post1 = Post.last(4) #pulls in last four posts to post1
    @photos = Photo.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    if current_user != nil && current_user.is_admin == true
      @post = Post.find(params[:id])
    else
      redirect_to posts_path
    end
  end

  def create
    post = Post.new(post_params)
    post.user_id = current_user.id
      #respond_to do |format|
      if post.save
        redirect_to new_posts_photo_path(post)
      else
        render 'new'
      end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      redirect_to new_post_photo_path(@post)
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
    def post_params
      params.require(:post).permit(:title, :category,:teaser, :content)
    end
end
