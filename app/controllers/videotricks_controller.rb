class VideotricksController < ApplicationController
  def index
    @videotricks = Videotrick.all # needed to instantiate the form_for
    # render :mp4, include: [:image, :video]
  end

  def new
    @videotrick = Videotrick.new # needed to instantiate the form_for
  end

  def create
    @videotrick = Videotrick.new(params[:videotrick])
    @videotrick.save
  end

  private

  def videotrick_params
    params.require(:videotrick).permit(:content)
  end
end
