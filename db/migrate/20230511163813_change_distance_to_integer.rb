class ChangeDistanceToInteger < ActiveRecord::Migration[7.0]
  def change
    remove_column :hikes, :distance, :string
  end
end
