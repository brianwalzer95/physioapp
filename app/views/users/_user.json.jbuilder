json.extract! user, :id, :name, :dob, :gender, :email, :phone_number, :password_digest, :additional_info, :created_at, :updated_at
json.url user_url(user, format: :json)