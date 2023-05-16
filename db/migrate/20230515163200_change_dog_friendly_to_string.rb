class ChangeDogFriendlyToString < ActiveRecord::Migration[7.0]
  def change
    change_column :hikes, :dog_friendly, :string
  end
end
