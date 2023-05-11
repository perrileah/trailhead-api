class FeaturesPlease < ActiveRecord::Migration[7.0]
  def change
    change_column :hikes, :features, :string, array: true, default: []
  end
end
