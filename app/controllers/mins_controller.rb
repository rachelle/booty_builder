class MinsController < ApplicationController

  def index 
    @mins = Mins.all 
  end 

  def new 
    @min = current_user.mins.new 
  end

  def create 
    @min = current_user.mins.create(mins_params)
    if @min.save
      redirect_to mins_path(current_user)
    else 
      render 'new'
    end
  end

  def edit 
    @min = Min.find(params[:id])
  end

  def update 
    if @min.update(min_params)
      flash[:success] = "Workout updated"
      redirect_to mins_path 
    else
      render 'edit'
    end
  end

  def destroy 
    @min = Min.find(params[:id])
    @min.destroy 
      redirect_to users_path(current_user)
  end

  private 

  def min_params
    params.require(:min).permit(:name, :description, :image)
  end

end
