json.extract! physio, :id, :name, :dob, :profile_picture, :registered, :email, :phone_number, :service_id, :password_digest, :created_at, :updated_at
json.url physio_url(physio, format: :json)