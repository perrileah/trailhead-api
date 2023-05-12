class ChangeDogFriendlyToBoolean < ActiveRecord::Migration[7.0]
  def change
    remove_column :hikes, :dog_friendly, :string
  end
end
