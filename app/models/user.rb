class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile, dependent: :destroy
  has_one :location
  has_many :tours
  has_many :photos
  has_many :bookings_as_tour_guide, class_name: :booking, foreign_key: :tour_guide_id
  has_many :bookings_as_traveller, class_name: :booking, foreign_key: :traveller_id

end
