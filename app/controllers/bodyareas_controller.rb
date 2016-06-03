class BodyareasController < ApplicationController
  before_action :find_bodyarea, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  def index
    @bodyareas = Bodyarea.all
  end
  
  def show
  end

  def new
    @bodyarea = Bodyarea.new
  end

  def create
    @bodyarea = Bodyarea.new(bodyarea_params)

    if @bodyarea.save
      flash[:notice] = "The body area was created successfully!"

      redirect_to bodyareas_path
    else
      render :new
    end  
  end

  def edit
  end

  def update
    if @bodyarea.update(bodyarea_params)
      flash[:notice] = "The body area was updated successfully!"
    else
      render :edit
    end  
  end

  def destroy
    @bodyarea.delete

    redirect_to bodyareas_path
  end

  def find_bodyarea
    @bodyarea = Bodyarea.find_by_id(params[:id])
  end

  def bodyarea_params
    params.require(:bodyarea).permit(:name)
  end  
end  