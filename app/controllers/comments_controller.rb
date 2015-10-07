class CommentsController < ApplicationController
  
  def index
    @comments = photo.comments
  end

  def new
    #creates a comments for the given photo 
    @comment = @photo.comments.new
    @commen.user = current_user
  end

  def create
    @comment = @photo.comments.new(comment_params)
    # for the new comment sets the user to be the current_user
    @comment.user = current_user
    if @comment.save
      flash[:success] = "Comment Posted"
    else 
      render 'new'
    end
  end

  def show
    @photo = Photo.find(params[:photo_id])
    @comment = photo.comments.find(params[:id])
  end

  def destroy
    @photo = Photo.find(params[:photo_id])
    @comment = Comment.find(params[:id])
    @comment.destroy 
    redirect_to photo_path(@photo.id)
  end

  private 

  def comment_params 
    params.require(:comment).permit(:content)
  end

  def set_photo 
    @photo = Photo.find(params[:photo_id])
  end

end
