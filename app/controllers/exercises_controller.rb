class ExercisesController < ApplicationController
  before_action :find_exercise, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @exercises = Exercise.all
  end

  def show
  end
  
  def new
    @exercise = Exercise.new
    @bodyareas = Bodyarea.all  
  end

  def create
    @exercise = Exercise.new(exercise_params)
    
    if @exercise.save
      flash[:notice] = "The exercise was saved successfully!"
    
      redirect_to exercises_path
    else
      render :new
    end  
  end

  def edit
  end

  def update
    if @exercise.update(exercise_params)
      flash[:notice] = "The exercise was updated successfully!"

      redirect_to exercises_path
    else
      render :edit
    end   

  end

  def destroy
    @exercise.delete

    redirect_to exercises_path
  end  

  def find_exercise
    @exercise = Exercise.find_by_id(params[:id])
  end

  def exercise_params
    params.require(:exercise).permit(:n_of_sets, :n_of_repetitions, :duration_of_repetition, :instructions, :bodyarea_id, :typesofexercise_id)
  end 
end