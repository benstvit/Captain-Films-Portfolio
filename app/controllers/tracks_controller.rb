class TracksController < ApplicationController
  def new
    @track = Track.new
    @albums = Album.all
    authorize @albums
  end

  def create
    @track = Track.new(tracks_params)
    @album = Album.where(id: params[:track][:album_id])
    @album = @track.album
    authorize @track
    authorize @album

    if @track.save!
      redirect_to bands_path(@album.band)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def tracks_params
    params.require(:track).permit(:title, :audio, :album_id)
  end
end
