class Hike < ApplicationRecord
  belongs_to :park
  has_many :reviews
  validates :park_id, :numericality => { :allow_blank => true }
end
