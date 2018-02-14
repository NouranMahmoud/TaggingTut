class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :author
      t.text :content

      t.timestamps
    end
  end
end
