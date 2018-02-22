class AddDateToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :date, :string
  end
end
