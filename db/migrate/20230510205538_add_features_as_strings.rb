class AddFeaturesAsStrings < ActiveRecord::Migration[7.0]
  def change
    add_column :hikes, :features, :string
  end
end
