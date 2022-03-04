class AppointmentsController < ApplicationController
  # def new
  #   @treatment = Treatment.find(params[:treatment_id])
  #   @appointment = Appointment.new
  # end

  def create
    @appointment = Appointment.new(appointment_params)
    @treatment = Treatment.find(params[:treatment_id])
    @appointment.treatment = @treatment
    if @appointment.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date)
  end
end
