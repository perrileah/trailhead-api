class CreateHikes < ActiveRecord::Migration[7.0]
  def change
    create_table :hikes do |t|
      t.string :name
      t.string :park_name
      t.float :distance
      t.string :time
      t.string :image_url
      t.string :route_type
      t.boolean :dog_friendly

      t.timestamps
    end
  end
end
