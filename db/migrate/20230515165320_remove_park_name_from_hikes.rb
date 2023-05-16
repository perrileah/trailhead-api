class RemoveParkNameFromHikes < ActiveRecord::Migration[7.0]
  def change
    remove_column :hikes, :park_name, :string
  end
end
