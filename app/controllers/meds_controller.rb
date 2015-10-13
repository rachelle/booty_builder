class MedsController < ApplicationController

  def index 
    @meds = Med.all
  end 

  def show
    @med = Med.new
  end

  def new
    @med = current_user.meds.new
  end

  def create 
    @med = current_user.meds.create(med_params)
  end

  def edit 
    @med = Med.find(params[:id])
  end

  def update
    if @med.update(med_params)
      flash[:success] = "Med updated" 
      redirect_to meds_path 
    else 
      render 'edit'
    end
  end

  def destroy 
    @med = Med.find(params[:id])
    @med.destroy 
    redirect_to users_path(current_user)
  end

  private 

  def med_params 
    params.require(:med).permit(:name, :description)
  end

end
