json.extract! tour, :id, :start_date_time, :end_date_time, :description, :price, :user_id, :location_id, :created_at, :updated_at
json.url tour_url(tour, format: :json)
