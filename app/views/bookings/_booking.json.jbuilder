json.extract! booking, :id, :traveller_id, :tour_guide_id, :tour_id, :has_paid, :rating, :review, :created_at, :updated_at
json.url booking_url(booking, format: :json)
