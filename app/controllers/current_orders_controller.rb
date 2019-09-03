class CurrentOrdersController < ApplicationController
before_action :authenticate_user!
def create
@item = Item.find(params[:item_id])
CurrentOrder.create(item: @item, cart: current_user.cart)
redirect_back(fallback_location: root_path)

end

def destroy

end


end
