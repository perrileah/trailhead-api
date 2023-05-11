class DistanceChange < ActiveRecord::Migration[7.0]
  def change
    remove_column :hikes, :distance, :integer
    add_column :hikes, :distance, :float
  end
end
