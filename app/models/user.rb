class User < ApplicationRecord
  after_create :create_profile

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile
  has_one :location
  has_and_belongs_to_many :languages
  has_many :tours

  def create_profile
    Profile.create!([
      {
        user_id: self.id
      }
    ])
  end

end
