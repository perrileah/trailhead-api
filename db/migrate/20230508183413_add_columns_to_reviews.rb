class AddColumnsToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :user_id, :integer
    add_column :reviews, :time, :string
    add_column :reviews, :ranking, :integer
    add_column :reviews, :comments, :string
    add_column :reviews, :image_url, :string
  end
end
