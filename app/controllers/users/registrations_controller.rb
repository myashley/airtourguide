class Users::RegistrationsController < Devise::RegistrationsController

    def after_sign_up_path_for(user)
      edit_profile_path(user.profile)
    end

end