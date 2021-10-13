class SkateshopsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @skateshops = Skateshop.all

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @skateshops.geocoded.map do |skateshop|
      {
        lat: skateshop.latitude,
        lng: skateshop.longitude,
        info_window: render_to_string(partial: "info_window", locals: { skateshop: skateshop })
      }
    end
  end
end
