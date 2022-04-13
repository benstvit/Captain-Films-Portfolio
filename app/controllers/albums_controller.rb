class AlbumsController < ApplicationController

  def new
    @album = Album.new
    @bands = Band.all
    authorize @album
    authorize @bands
  end

  def create
    @album = Album.new(album_params)
    # @band = Band.where(id: params[:band][:band])
    @album[:band_id] = params[:band][:band]
    # @album.band = @band
    # @album.user = current_user
    authorize @album


    if @album.save!
      redirect_to band_path(@album.band)
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
