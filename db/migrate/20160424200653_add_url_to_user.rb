class AddUrlToUser < ActiveRecord::Migration
  def change
    add_column :users, :url, :string, :default => "https://cdn.thinglink.me/api/image/727110550026190849/1240/10/scaletowidth"
  end
end
