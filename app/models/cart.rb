class Cart < ApplicationRecord
	belongs_to :user
	has_many :current_orders
	has_many :items, through: :current_orders, foreign_key: "cart_id"


end
