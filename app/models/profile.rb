class Profile < ApplicationRecord
  belongs_to :user

  validates :user, presence: true

  def fullname
    "#{first_name} #{last_name}"
  end
  
end
