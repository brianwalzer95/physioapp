class Service < ActiveRecord::Base
	has_many :physios, dependent: :destroy
	has_many :lineitems
	
	validates :service_name, presence: true
	validates :service_name, uniqueness: true
	validates :price, presence: true
	
	def apply_discount(service, discount)
		if !service.nil?
			service.price = service.price - service.price * discount
		end
	end
	
	def self.search(query)
		where("service_name LIKE ?", "%#{query}%")
	end
end
