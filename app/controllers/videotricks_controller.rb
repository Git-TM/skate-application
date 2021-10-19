class VideotricksController < ApplicationController
  def index
    @videotricks = Videotrick.all # needed to instantiate the form_for
    # render :mp4, include: [:image, :video]
  end

  # def new
  #   @videotrick = Videotrick.new # needed to instantiate the form_for
  # end

  def create
    @spot = Spot.find(params[:spot_id])
    @videotrick = Videotrick.new(videotrick_params)
    @videotrick.spot = @spot
    if @videotrick.save
      redirect_to spot_path(@spot)
    else
      render 'spots/show'
    end
  end

  private

  def videotrick_params
    params.require(:videotrick).permit(:content)
  end
end
