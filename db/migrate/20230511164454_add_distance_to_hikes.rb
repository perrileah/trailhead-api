class AddDistanceToHikes < ActiveRecord::Migration[7.0]
  def change
    add_column :hikes, :distance, :integer
  end
end
