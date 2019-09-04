class Item < ApplicationRecord
	has_many :sales
	has_many :current_orders
	has_many :users, through: :sales, foreign_key: "item_id"
	has_many :carts, through: :current_orders, foreign_key: "item_id"
	has_one_attached :avatar

	validates :title,
		presence: true,
		length: { minimum: 5, maximum: 140 }

	validates :description,
		presence: true,
		length: { minimum: 20, maximum: 1000 }

	validates :image_url,
		presence: true
		
end
