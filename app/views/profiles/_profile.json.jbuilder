json.extract! profile, :id, :firstname, :lastname, :address, :county, :email, :phone, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
