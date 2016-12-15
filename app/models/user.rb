class User < ActiveRecord::Base
	has_secure_password
	has_many :comments
	has_many :orders
	
	validates :name, presence: true
	validates :gender, presence: true
	validates :email, presence: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	validates :email, uniqueness: true
	validates :phone_number, presence: true
	
	def age
		d = Date.new(Date.today.year, dob.month, dob.day)
		d.year - dob.year - (d > Date.today ? 1 : 0)
	end
end