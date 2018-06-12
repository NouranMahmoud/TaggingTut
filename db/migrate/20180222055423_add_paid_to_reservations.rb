class AddPaidToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :paid, :boolean, :default => false
  end
end
