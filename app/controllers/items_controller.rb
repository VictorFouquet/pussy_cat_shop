class ItemsController < ApplicationController
  def index
  	@allCatsPics = ["app/assets/images/cat-1.jpg", "app/assets/images/cat-2.jpg", "app/assets/images/cat-3.jpg", "app/assets/images/cat-4.jpg", "app/assets/images/cat-5.jpg", "app/assets/images/cat-6.jpg", "app/assets/images/cat-7.jpg", "app/assets/images/cat-8.jpg", "app/assets/images/cat-9.jpg"]
  end

  def show
    @item = Item.find(params[:id])
  end
end
