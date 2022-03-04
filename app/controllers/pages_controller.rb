class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @treatments = Treatment.all
    if params[:specialty]
      @treatments = @treatments.where(specialty: params[:specialty].downcase)
    end
  end
end
