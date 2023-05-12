class ChangeDogFriendly < ActiveRecord::Migration[7.0]
  def change
    add_column :hikes, :dog_friendly, :boolean, default: true
  end
end
