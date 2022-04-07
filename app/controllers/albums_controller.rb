class AlbumsController < ApplicationController

  def new
    @album = Album.new
    @bands = Band.all
    authorize @album
    authorize @bands
  end

  def create
    @album = Album.new(album_params)
    @band = Artist.find(params[band_id])
    @album.band = @band
    if @album.save!
      redirect_to band_path(@band)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def album_params
    params.require(:album).permit(:name, :genre)
  end
end
