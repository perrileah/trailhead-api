class AddRouteTypesToHikes < ActiveRecord::Migration[7.0]
  def change
    add_column :hikes, :route_type, :string
  end
end
