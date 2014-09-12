class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :auther
      t.text :content

      t.timestamps
    end
  end
end
