class VideotricksController < ApplicationController
  def index
    @videotricks = Videotrick.all # needed to instantiate the form_for
    # render :mp4, include: [:image, :video]
  end

  def new
    @videotrick = Videotrick.new # needed to instantiate the form_for
  end

  def create
    # @videotrick = Videotrick.new(params[:videotrick_id])
    @spot = Spot.find(params[:spot_id])
    @newvideotrick.spot = @spot
    @newvideotrick.save
    if @newvideotrick.save
      redirect_to spot_path(@spot)
    else
      render 'spots/show'
    end
  end

  # def create
  #   @spot = Spot.find(params[:spot_id])
  #   @review = Review.new(review_params)
  #   @review.spot = @spot
  #   if @review.save
  #     redirect_to spot_path(@spot)
  #   else
  #     render 'spots/show'
  #   end
  # end

  private

  def videotrick_params
    params.require(:videotrick).permit(:content, :video)
  end
end
