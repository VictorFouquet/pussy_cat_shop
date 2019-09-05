class ItemsController < ApplicationController
  def index
  	@allCatsPics = ["app/assets/images/cat-1.jpg", "app/assets/images/cat-2.jpg", "app/assets/images/cat-3.jpg", "app/assets/images/cat-4.jpg", "app/assets/images/cat-5.jpg", "app/assets/images/cat-6.jpg", "app/assets/images/cat-7.jpg", "app/assets/images/cat-8.jpg", "app/assets/images/cat-9.jpg"]
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
  	@item = Item.new
  end

  def create
  	@item = Item.create!(
  		title: params[:title],
  		description: params[:description],
  		price: params[:price],
  		image_url: "cat1.jpg"
  		)
  	@item.avatar.attach(params[:avatar])
  	redirect_to root_path
  end

  def destroy
  	Item.find(params[:id]).destroy
    redirect_back(fallback_location: root_path)    
  end
end
