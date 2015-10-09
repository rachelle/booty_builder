class WorkoutsController < ApplicationController
  
  def index
    @workouts = Workout.all 
  end

  def new
    @workout = current_user.workouts.new
  end

  def create 
    @workout = workouts.create(workout_params)
    if @workout.save 
      redirect_to workouts_path(current_user)
    else 
      render 'new'
    end
  end

  def edit
    @workout = Workout.find(params[:id])
  end

  def show
    @workout_maxs = @workout.maxs
    @workout_meds = @workout.meds
    @workout_mins = @workout.mins@workout = Workout.new
    @workout = Workout.new
    @workout.user = current_user
  end

  def update
    if @workout.update(workout_params)
      flash[:success] = "Workout Updated"
      redirect_to workouts_path 
    else 
      render 'edit'
    end
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy 
      redirect_to users_path(current_user)
  end

  private 

  def workout_params
    params.require(:workout).permit(:description, :name)
  end
end
