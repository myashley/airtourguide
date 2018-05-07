class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @profile = current_user.profile
  end
end
