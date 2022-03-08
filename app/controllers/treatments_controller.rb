class TreatmentsController < ApplicationController
  before_action :set_treatment, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :show

  def index
    @treatments = current_user.treatments
  end

  def show
    @treatment = Treatment.find(params[:id])
    @appointment = Appointment.new
  end

  def new
    @treatment = Treatment.new
  end

  def create
    @treatment = Treatment.new(treatment_params)
    @treatment.user = current_user
    @treatment.save

    redirect_to treatments_path
  end

  def edit
    @treatment = Treatment.find(params[:id])
    @treatment.save
  end

  def update
    @treatment.update(treatment_params)

    redirect_to treatment_path(@treatment)
  end

  def destroy
    @treatment.destroy
    redirect_to treatments_path
  end

  private

  def treatment_params
    params.require(:treatment).permit(:address, :specialty, :start_date, :end_date, :price, :photo)
  end

  def set_treatment
    @treatment = Treatment.find(params[:id])
  end
end
