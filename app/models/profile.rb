class Profile < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :user_id, uniqueness: { message: 'can only have one profile.' }

  def fullname
    "#{first_name} #{last_name}"
  end
  
end
