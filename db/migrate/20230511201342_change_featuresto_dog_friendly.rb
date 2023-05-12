class ChangeFeaturestoDogFriendly < ActiveRecord::Migration[7.0]
  def change
    rename_column :hikes, :features, :dog_friendly
  end
end
