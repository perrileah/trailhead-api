class FeaturesAgainAgain < ActiveRecord::Migration[7.0]
  def change
    add_column :hikes, :features, :string, array: true, default: []
  end
end
