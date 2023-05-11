class RemoveFeaturesOmg < ActiveRecord::Migration[7.0]
  def change
    remove_column :hikes, :features, :string, array: true, default: []
  end
end
