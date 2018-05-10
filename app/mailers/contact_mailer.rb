class ContactMailer < ApplicationMailer
    #default to: current_user.email

    def send_contact_email(user_info)
        @sender = user_info[:sender] 
        @name = user_info[:name] 
        @message = user_info[:message] 
        receiver_email = 
        subject = "[Air Tour Guide] You have a new message"
        mail(to: receiver_email, subject: subject)
    end
end