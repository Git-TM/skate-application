class SpotphotosController < ApplicationController
  def new
    @spot = Spot.find(params[:spot_id])
    @spotphoto = Spotphoto.new
  end

  def create
    @spotphoto = Spotphoto.new(spotphoto_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @spot = Spot.find(params[:spot_id])
    @spotphoto.spot = @spot
    @spotphoto.save
    redirect_to spot_path(@spot)
  end

  private

  def spotphoto_params
    params.require(:spotphoto).permit(:description, photos: [])
  end
end
