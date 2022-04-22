class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def contact
    @user = User.where(id: 1)
    authorize @user
  end
end
