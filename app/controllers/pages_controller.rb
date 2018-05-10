class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if user_signed_in?
      @profile = current_user.profile
    end

    @tours = Tour.all.where(has_booked: false).order(start_date_time: 'ASC').limit(21)
  end

  def contact 
    @user= params[:user]
  end

  def contact_email
    user_info = {
      sender: current_user, 
      name: email_params[:name],
      message: email_params[:message]
      receiver: email_params[:receiver]
    }
    ContactMailer.send_contact_email(user_info).deliver_now
    render :contact
  end
  
  private
  def email_params
    params.require(:contact).permit(:name, :message, :receiver)
  end 

end
