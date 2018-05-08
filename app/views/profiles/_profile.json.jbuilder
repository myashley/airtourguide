json.extract! profile, :id, :first_name, :last_name, :about_me, :intro_tour_guide, :fare_per_hour, :street_address, :city, :state, :country_code, :postcode, :phone_number, :is_tour_guide, :is_photographer, :has_car, :has_historical_knowledge, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
