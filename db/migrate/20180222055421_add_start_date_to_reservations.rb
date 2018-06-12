class AddStartDateToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :start_date, :date
  end
end
