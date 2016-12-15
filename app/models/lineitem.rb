class Lineitem < ActiveRecord::Base
	belongs_to :cart
	belongs_to :service
	belongs_to :order
end
