class TracksController < ApplicationController
  def new
    @track = Track.new
    @albums = Album.all
    authorize @albums
  end

  def create
    @track = Track.new(tracks_params)
    @album = Album.where(id: params[:album_id])
    @track.album = @album
    authorize @track
    authorize @album
    if @track.save!
      redirect_to album_path(@album)
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
