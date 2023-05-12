class AddParkIdToHikes < ActiveRecord::Migration[7.0]
  def change
    add_column :hikes, :park_id, :integer
  end
end
