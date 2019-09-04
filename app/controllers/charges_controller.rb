class ChargesController < ApplicationController
	def new
	end

	def create
	  # Amount in cents
	  @amount = params[:price].to_i*100

	  customer = Stripe::Customer.create({
	    email: params[:stripeEmail],
	    source: params[:stripeToken],
	  })

	  charge = Stripe::Charge.create({
	    customer: customer.id,
	    amount: @amount,
	    description: 'Rails Stripe customer',
	    currency: 'usd',
	  })

	  

	  flash[:success] = "Bien joué payement"
		@current_order = current_user.cart.current_orders
    @current_order.each do |current_order|
    	Sale.create(user: current_user, item: current_order.item )
  	end
    current_user.cart.current_orders.destroy_all
    redirect_to root_path
	
		rescue Stripe::CardError => e
		  flash[:error] = e.message
		  redirect_to cart_path(params[:cart_id])
	end
end
