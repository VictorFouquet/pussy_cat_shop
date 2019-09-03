class SalesController < ApplicationController


  def create
    @current_order = current_user.cart.current_orders
    @current_order.each do |current_order|
    Sale.create(user: current_user, item: current_order.item )
  end
    current_user.cart.current_orders.destroy_all
  end



end
