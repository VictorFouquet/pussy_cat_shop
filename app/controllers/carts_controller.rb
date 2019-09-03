class CartsController < ApplicationController
  def show
  	@pics = Cart.find(params[:id]).current_orders
  	
  	def sub_total
		sum = 0
		current_user.cart.current_orders.each do |current_order|
			sum+= current_order.item.price
		end
	return sum
	end

	@sub_total = sub_total
  end

  def destroy
  end
end
