class User < ApplicationRecord
  

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile, dependent: :destroy
  has_one :location
  has_and_belongs_to_many :languages
  has_many :tours
  has_many :photos

end
