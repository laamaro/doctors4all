class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @treatments = Treatment.all
    if params[:specialty]
      @treatments = @treatments.where(specialty: params[:specialty].downcase)
    end
    @markers = @treatments.geocoded.map do |treatment|
      {
        lat: treatment.latitude,
        lng: treatment.longitude,
        info_window: render_to_string(partial: "info_window", locals: { treatment: treatment })
      }
    end
  end
end
