class Physio < ActiveRecord::Base
	has_secure_password 
	has_many :comments, :dependent => :destroy
	
	validates :name, presence: true
	validates :registered, presence: true
	validates :phone_number, presence: true
	validates_uniqueness_of :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/} 
	
	def average_stars
		comments.average(:stars)
	end
	
	def age
		d = Date.new(Date.today.year, dob.month, dob.day)
		d.year - dob.year - (d > Date.today ? 1 : 0)
	end
end
