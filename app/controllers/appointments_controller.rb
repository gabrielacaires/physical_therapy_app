class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @appointments = User.find_by_id(current_user).appointments
    @bodyareas = Bodyarea.all

    respond_to do |format|
      format.html
      format.js
    end  
  end  

  def show
  end

  def new
    @appointment = Appointment.new
    @bodyareas = Bodyarea.all
    @exercise = Exercise.new
    @appointment.exercises.build()
  end

  def create
    @appointment = Appointment.new(appointment_params)

    binding.pry

    if @appointment.save
      flash[:notice] = "The appointment was saved successfully!"

      redirect_to appointments_path
    else
      render :new
    end
  end

  def edit
    @bodyareas = Bodyarea.all
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
    params.require(:appointment).permit(:app_date, :duration, :comments, :exercises_attributes => [:id, :n_of_sets, :n_of_repetitions, :duration_of_repetition, :bodyarea_id, :typesofexercise_id], :exercise_ids => [], :user_ids => []).merge(user_ids: current_user.id)
  end
end  