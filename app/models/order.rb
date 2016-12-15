class Order < ActiveRecord::Base
	belongs_to :user
	has_many :lineitems
	
	def add_lineitems_from_cart(cart)
		cart.lineitems.each do |item|
			item.cart_id = nil
			lineitems << item
		end
	
	end
	
	
	def total_price(price)
		@total_price ||= lineitems.includes(:services).reduce(0) do |sum, lineitem|
			sum + (lineitem.count * lineitem.service.price)
		end
	end
end
