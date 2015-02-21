class PhotosController < ApplicationController
	def index
	  @photos = Photo.all
	end

  def new
    @post = get_post
  	@photo =@post.photos.new
  end

  def create
  	post = get_post
  	photo = post.photos.create(photo_params)
    #or the standard create:
    #@photo = Photo.create(photo_params)
    if photo.save
      redirect_to post_path(post)
    else
      render 'new'
    end
  end

  def show
  	@photo = Photo.find(params[:id])
  end

  def destroy
    photos = Photo.find(params[:id])
    photo.destroy
    redirect_to post_path(post)
  end

  private
  def get_post
  	@post = Post.where(id: params[:post_id]).first
  end

  def photo_params
    params.require(:photo).permit(:image, :photo_date, :post_id)
  end
end
