class Cart < ActiveRecord::Base
	has_many :lineitems
	
	def add_service(service_id)
		current_item = lineitems.find_by_service_id(service_id)
		if current_item
				current_item.quantity +=1
		else
			current_item = lineitems.new(service_id: service_id)
			current_item.quantity = 1
		
		end
		current_item 			#this is returning the current_item object
		
	end
end
