class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @appointments = Appointment.all
  end  

  def show
  end

  def new
    @appointment = Appointment.new
    @bodyareas = Bodyarea.all
    @exercise = Exercise.new
  end

  def create
    @appointment = Appointment.new(appointment_params)

    if @appointment.save
      flash[:notice] = "The appointment was saved successfully!"

      redirect_to appointments_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @appointment.update(appointment_params)
      flash[:notice] = "The appointment was updated successfully"

      redirect_to appointments_path
    else
      render :edit
    end
  end

  def find_appointment
    @appointment = Appointment.find_by_id(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:app_date, :duration, :comments, :exercise_ids => [])
  end  
end  