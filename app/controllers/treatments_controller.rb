class TreatmentsController < ApplicationController
  before_action :set_treatment, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :show

  def index
    @treatments = Treatment.all
  end

  def show
    @treatment = Treatment.find(params[:id])
  end

  def new
    @treatment = Treatment.new
  end

  def create
    @treatment = Treatment.new(treatment_params)
    @treatment.save

    redirect_to treatments_path(@treatment)
  end

  def edit
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
    params.require(:treatment).permit(:address, :specialty, :availability, :price)
  end

  def set_treatment
    @treatment = Treatment.find(params[:id])
  end
end
