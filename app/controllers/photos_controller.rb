class PhotosController < ApplicationController
  before_action :find_photo, only: [:show, :edit, :destroy, :update]

  def index
    @photos = policy_scope(Photo)
  end

  def show
  end

  def new
    @photo = Photo.new
    authorize @photo
  end

  def create
    @photo = Photo.new(photos_params)
    authorize @photo

    if @photo.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_photo
    @photo = Photo.find(params[:id])
    authorize @photo
  end

  def photos_params
    params.require(:photo).permit(:title, :image, :category)
  end
end
