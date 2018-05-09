class Booking < ApplicationRecord
  belongs_to :traveller
  belongs_to :tour_guide
  belongs_to :tour
end
