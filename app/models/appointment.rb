class Appointment < ActiveRecord::Base
	belongs_to :physio
	belongs_to :user
	
	validates :location,presence: true
	validates :previous_appointment,presence: true
	
end
