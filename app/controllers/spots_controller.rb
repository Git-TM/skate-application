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
    @videotricks = Videotrick.where(spot_id: params[:id])
    @newvideotrick = Videotrick.new
  end

  # def create
  #   @spot = Videotrick.new(params[:videotrick])
  #   @videotrick.save
  #   # Will raise ActiveModel::ForbiddenAttributesError
  # end

  #   def create
  #   # @videotrick = Videotrick.new(params[:videotrick_id])

  #   @spot = Spot.find(params[:spot_id])
  #   @newvideotrick = Videotrick.new(videotrick_params)
  #   @newvideotrick.spot = @spot
  #   @newvideotrick.save
  #   if @newvideotrick.save
  #     redirect_to spot_path(@spot)
  #   else
  #     render 'spots/show'
  #   end
  # end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.save

    redirect_to spots_path
  end

  private

  def spot_params
    params.require(:spot).permit(:name, :address, :photo)
  end
end
