class Booking < ApplicationRecord

  belongs_to :traveller, class_name: "User"
  belongs_to :tour_guide, class_name: "User"
  belongs_to :tour


end
