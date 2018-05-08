class Location < ApplicationRecord
  belongs_to :user
  has_many :tours

  validates_uniqueness_of :name, scope: :user_id

end
