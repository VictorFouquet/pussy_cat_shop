class Item < ApplicationRecord
	has_many :sales
	has_many :users, through: :sales, foreign_key: "item_id"
end
