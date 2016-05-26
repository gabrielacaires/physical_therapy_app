class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show, :edit, :update, :destroy]

  def index
    @appointments = Appointment.all
  end  

  def show
  end

  def new
    @appointment = Appointment.new
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

  def find_appointment
    @appointment = Appointment.find_by_id(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit!
  end  
end  