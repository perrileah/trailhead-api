class ChangeFeaturesAgain < ActiveRecord::Migration[7.0]
  def change
    remove_column :hikes, :features, :string
  end
end
