class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @treatments = Treatment.all
    if params[:query]
      @treatments = @treatments.where(specialty: params[:query])
    end
  end
end
