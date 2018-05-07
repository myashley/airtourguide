class ApplicationController < ActionController::Base
  include Pundit
  
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  


  # private
  #   def set_time_zone
  #     Time.zone = current_user.time_zone
  #   end
end
