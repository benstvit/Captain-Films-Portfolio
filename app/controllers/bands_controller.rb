class BandsController < ApplicationController
  before_action :find_band, only: [:show, :destroy]

  def index
    @bands = policy_scope(Band)
  end

  def show
    @albums = Album.where(band_id: @band)
    @albums.each do |album|
      @tracks = Track.where(album_id: album)
    end
  end

  def new
    @band = Band.new
    authorize @band
  end

  def create
    @band = Band.new(band_params)
    @band.user = current_user

    authorize @band
    if @band.save!
      redirect_to band_path(@band)
    else
      render :new
    end
  end

  def destroy
    @band.destroy
    redirect_to bands_path
  end

  private

  def find_band
    @band = Band.find(params[:id])
    authorize @band
  end

  def band_params
    params.require(:band).permit(:name, :image)
  end
end
