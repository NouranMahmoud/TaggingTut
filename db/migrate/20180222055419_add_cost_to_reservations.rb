class AddCostToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :cost, :integer
  end
end
