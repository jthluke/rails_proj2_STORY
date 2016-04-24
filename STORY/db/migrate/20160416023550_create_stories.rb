class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.integer :vote
      t.integer :user_id
      t.string :beginning

      t.timestamps null: false
    end
  end
end
