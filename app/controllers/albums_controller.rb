class AlbumsController < ApplicationController
  def destroy
  end

  private

  def albums_params
    params.require[:album].permit(:name, :genre)
  end
end
