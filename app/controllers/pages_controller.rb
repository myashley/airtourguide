class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    if user_signed_in?
      @profile = current_user.profile
    end

    @tours = Tour.all.where(has_booked: false).order(start_date_time: 'ASC').limit(21)
  end

end
