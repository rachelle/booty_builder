class MaxsController < ApplicationController

  def index 
    @maxs = Max.all
  end

  def new 
    @max = Max.new
  end

  def create
    @max = current_user.maxs.create(max_params)
  end

  def edit 
    @max = Max.find(params[:id])
  end

  def update 
    if @max.update(max_params)
      flash[:success] = "Max updated"
      redirect_to maxs_path 
    else 
      render 'edit'
    end
  end

  def destroy 
    @max = Max.find(params[:id])
    @max.destroy 
    redirect_to users_path(current_user)
  end

  private 

  def max_params
    params.require(:max).permit(:name, :description)
  end
  
end
