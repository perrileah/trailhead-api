class CreateHikes < ActiveRecord::Migration[7.0]
  def change
    create_table :hikes do |t|
      t.string :name
      t.integer :park_id
      t.string :distance
      t.string :time
      t.string :image_url

      t.timestamps
    end
  end
end
