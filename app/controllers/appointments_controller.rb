class AppointmentsController < ApplicationController
  # def new
  #   @treatment = Treatment.find(params[:treatment_id])
  #   @appointment = Appointment.new
  # end

  def index
    @appointments = Appointment.all
    # @appointments = Appointment.where(user_id: params[current_user.id])
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @treatment = Treatment.find(params[:treatment_id])
    @appointment.treatment = @treatment
    @appointment.user = current_user
    if @appointment.save
      redirect_to appointment_path(@appointment), notice: "Sua consulta foi marcada!"
    else
      render 'treatments/show'
    end

  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to appointments_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date)
  end
end
