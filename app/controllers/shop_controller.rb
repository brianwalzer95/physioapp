class ShopController < ApplicationController
  def index
	@services = Service.order("service_name asc").all
  end
end
