class TracksController < ApplicationController

  def new
  end

  def create
  end

  def destroy
  end

  private

  def tracks_params
    params.require(:track).permit(:title, :audio)
  end
end
