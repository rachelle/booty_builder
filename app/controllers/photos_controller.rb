class PhotosController < ApplicationController
  

  def index
    @photos = Photo.all
  end

  def new
    @photo = current_user.photos.new
  end

  def create 
    @photo = current_user.photos.create(photo_params)
    if @photo.
      redirect_to photos_path(current_user)
    else 
      render 'new'
    end
  end

  def show
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    if @photo.update(photo_params)
      flash[:success] = "Photo Updated"
      redirect_to photos_path 
    else 
      render 'edit'
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy 
      redirect_to users_path(current_user)
  end

  private 

  def photo_params
    params.require(:photo).permit(:image, :content)
  end

  def check_logged_in
  end

  def set_photo 
    @photo = Photo.find(params[:id])
  end 

end
