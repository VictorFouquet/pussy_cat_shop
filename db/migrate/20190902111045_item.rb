class Item < ActiveRecord::Migration[5.2]
  def change
  	  create_table :items do |t|
	  		t.string :title
	  		t.text :description
	  		t.decimal :price
	  		t.string :image_url  
	  	end
  end
end
