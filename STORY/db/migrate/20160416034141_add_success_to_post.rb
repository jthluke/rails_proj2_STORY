class AddSuccessToPost < ActiveRecord::Migration
  def change
    add_column :posts, :success, :boolean
  end
end
