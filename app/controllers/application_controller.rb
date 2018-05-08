class ApplicationController < ActionController::Base
  include Pundit
  
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private
 
    def user_not_authorized
      flash[:warning] = "You are not authorized to perform this action."
      redirect_to(request.referrer || root_path)
    end

    # def after_sign_up_path_for(user)
    #   edit_profile_path(user.profile)
    # end

    # def after_sign_in_path_for(resource)
    #   if user.profile.nil
    #   profile_path(resource.profile) if resource.profile.nil?
    # end

  # private
  #   def set_time_zone
  #     Time.zone = current_user.time_zone
  #   end
end
