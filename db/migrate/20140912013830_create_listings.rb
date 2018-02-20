class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      
	  	t.belongs_to :user, foreign_key: true
	  	t.string :title
	  	t.integer :price
	  	t.string :location
	  	t.integer :bedrooms
	  	t.float :bathrooms
	  	t.text :amenities
	    t.text :description
	    t.string :image

	    t.timestamps
    end
  end
end
