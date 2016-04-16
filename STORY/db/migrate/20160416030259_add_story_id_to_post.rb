class AddStoryIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :story_id, :integer
  end
end
