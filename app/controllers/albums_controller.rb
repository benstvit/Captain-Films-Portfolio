class AlbumsController < ApplicationController

  def new
    @album = Album.new
    @track = Track.new
    @bands = Band.all
    authorize @album
    authorize @bands
    authorize @track
  end

  def create
    @album = Album.new(album_params)
    @band = Band.where(id: params[:band][:band])
    @album.band = @band
    @track = @album.track
    @band.user = current_user

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
