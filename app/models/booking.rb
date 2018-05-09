class Booking < ApplicationRecord
  belongs_to :traveller, class_name: :user
  belongs_to :tour_guide, class_name: :user
  belongs_to :tour
end
