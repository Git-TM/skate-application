class SpotsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @spots = Spot.all
    # @spot = Spot.find(params[:id])

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @spots.geocoded.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude,
        info_window: render_to_string(partial: "info_window", locals: { spot: spot })
      }
    end
  end

  def show
    @spot = Spot.find(params[:id])
    @videotrick = Videotrick.new
    @allvideotricks = Videotrick.where(spot_id: params[:id])
    @spotphotos = Spotphoto.where(spot_id: params[:id])
    # respond_to do |format|
    #   format.html
    #   format.js
    # end
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.create!(spot_params)
    redirect_to spots_path
  end

  def personal
    @videotricks = Videotrick.where(user_id: current_user.id)
  end

  private

  def spot_params
    params.require(:spot).permit(:name, :address, photos: [])
  end
end
