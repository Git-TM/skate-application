class VideotricksController < ApplicationController
  def index
    @videotricks = Videotrick.all
  end

  def create
    @spot = Spot.find(params[:spot_id])
    @videotrick = Videotrick.new(videotrick_params)
    @videotrick.spot_id = @spot.id
    @videotrick.user_id = current_user.id
    @videotrick.save
    # if @videotrick.save
    #   redirect_to spots_path
    # else
    #   redirect_to spot_path(@spot)
    # end
  end

  private

  def videotrick_params
    params.require(:videotrick).permit(:content, :video)
  end
end
