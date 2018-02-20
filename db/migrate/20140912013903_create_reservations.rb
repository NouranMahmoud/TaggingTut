class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.belongs_to :listing, index: true
      t.belongs_to :user, index: true
      t.date :date

      t.timestamps
    end
  end
end
