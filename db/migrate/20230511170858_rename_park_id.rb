class RenameParkId < ActiveRecord::Migration[7.0]
  def change
    rename_column :hikes, :park_id, :park_name
  end
end
