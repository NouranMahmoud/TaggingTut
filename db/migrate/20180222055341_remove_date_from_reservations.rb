class RemoveDateFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :date, :text
  end
end
