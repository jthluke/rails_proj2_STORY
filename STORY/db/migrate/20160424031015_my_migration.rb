class MyMigration < ActiveRecord::Migration
  def change
  	change_column_default :users, :points, from: nil, to: 0
  end
end
