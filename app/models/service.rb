class Service < ActiveRecord::Base
	has_many :physios, dependent: :destroy
	
	validates :service_name, presence: true
	validates :service_name, uniqueness: true
	validates :price, presence: true
end
