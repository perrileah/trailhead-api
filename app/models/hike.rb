class Hike < ApplicationRecord
  has_many :reviews
  validates :park_id, :numericality => { :allow_blank => true }
end
