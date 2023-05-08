class RemoveAddressFromParks < ActiveRecord::Migration[7.0]
  def change
    remove_column :parks, :address, :string
  end
end
