json.extract! photo, :id, :image_data, :description, :is_profile, :user_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)
