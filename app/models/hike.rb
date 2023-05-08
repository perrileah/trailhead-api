class Hike < ApplicationRecord
  belongs_to :park
  belongs_to :user
  has_many :reviews
end
