class SkateshopsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @skateshops = Skateshop.all

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @skateshops.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end
end
