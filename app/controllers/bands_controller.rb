class BandsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
  end

  private

  def bands_params
    params.require[:band].permit(:name)
  end

end
