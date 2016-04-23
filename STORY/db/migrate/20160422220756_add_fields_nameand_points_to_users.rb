class AddFieldsNameandPointsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :points, :integer
  end
end
