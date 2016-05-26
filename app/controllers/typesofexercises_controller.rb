class TypesofexercisesController < ApplicationController
  before_action :find_typesofexercise, only: [:show, :edit, :update, :destroy]

  def index
    @typesofexercises = Typesofexercise.all
  end
  
  def show
  end

  def new
    @typesofexercise = Typesofexercise.new
  end

  def create
    @typesofexercise = Typesofexercise.new(typesofexercise_params)

    if @typesofexercise.save
      flash[:notice] = "The exercise was saved successfully!"
    
      redirect_to typesofexercises_path
    else
      render :new
    end  
  end

  def edit
  end  

  def update
    if @typesofexercise.update(typesofexercise_params)
      flash[:notice] = "The exercise was updated successfully"

      redirect_to typesofexercises_path
    else
      render :edit
    end
  end

  def destroy
    @typesofexercise.delete

    redirect_to typesofexercises_path, notice: "Exercise deleted successfully"
  end

  def typesofexercise_params
    params.require(:typesofexercise).permit(:name, :bodyarea_id)
  end 

  def find_typesofexercise
    @typesofexercise = Typesofexercise.find_by_id(params[:id])
  end 
end  