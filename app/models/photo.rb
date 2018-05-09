class Photo < ApplicationRecord
  include ImageUploader::Attachment.new(:image) # adds an `image` virtual attribute
  belongs_to :user


  #  before_save :falsify_all_others
   

  # if one profile photo is selected, put others to false

  def falsify_all_others
    if self.is_profile
        self.class.where(user_id: self.user_id).update_all(is_profile: false)
    end
  end

end
