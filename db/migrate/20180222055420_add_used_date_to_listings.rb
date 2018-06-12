class AddUsedDateToListings < ActiveRecord::Migration
  def change
    add_column :listings, :used_date, :string
  end
end
