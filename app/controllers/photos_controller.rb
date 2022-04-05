class PhotosController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def photos_params
    params.require[:photo].permit(:title, :photo)
  end
end
