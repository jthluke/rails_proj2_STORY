class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :vote
      t.string :content
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
