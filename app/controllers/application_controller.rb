class ApplicationController < ActionController::Base
  # before_action :authenticate_user!, only: [:new]
  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end

  def random_song
    @tracks = Track.all
    @random_song = @tracks.sample(1)
    @path = CloudinaryHelper.cl_video_path(@random_song)

    return @path
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  helper_method :random_song
end
