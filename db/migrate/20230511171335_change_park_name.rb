class ChangeParkName < ActiveRecord::Migration[7.0]
  def change
    change_column :hikes, :park_name, :string
  end
end
