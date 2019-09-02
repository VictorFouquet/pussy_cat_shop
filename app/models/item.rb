class Item < ApplicationRecord
	has_many :sales
	has_many :users, through: :sales, foreign_key: "item_id"
	
	def is_between_1_and_1000?
		if self.price < 1 || self.price > 1000
			errors.add(:duration, "Le prix doit se situer entre 1 et 1.000€")
		end
	end

	validates :title,
		presence: true,
		length: { minimum: 5, maximum: 140 }

	validates :description,
		presence: true,
		length: { minimum: 20, maximum: 1000 }

	validates :price,
		presence: true,
		if: :is_between_1_and_1000?

	validates :image_url,
		presence: true
		
end
