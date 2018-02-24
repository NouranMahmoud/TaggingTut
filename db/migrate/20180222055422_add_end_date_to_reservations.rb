class AddEndDateToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :end_date, :date
  end
end
