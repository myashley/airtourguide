json.extract! photo, :id, :description, :is_profile, :user_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)
