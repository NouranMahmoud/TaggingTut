class CreateAuthentications < ActiveRecord::Migration
  def change
    create_table :authentications do |t|
      t.string :uid
      t.string :token
      t.string :provider
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
