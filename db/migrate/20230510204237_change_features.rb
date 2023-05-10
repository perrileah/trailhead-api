class ChangeFeatures < ActiveRecord::Migration[7.0]
  def change
    change_column :hikes, :features, :string
  end
end
