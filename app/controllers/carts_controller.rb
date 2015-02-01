class CartsController < ApplicationController
  def show
  	@user_id = current_user.id 
    @order_items = current_order.order_items
  end
end
