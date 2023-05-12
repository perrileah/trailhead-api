class DropHikes < ActiveRecord::Migration[7.0]
  def change
    drop_table :hikes
  end
end
