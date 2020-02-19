class Review < ApplicationRecord
  belongs_to :restaurant
  RATINGS = (0..5)
  validates :content, presence: true
  validates :rating, numericality:
  { only_integer: true }, inclusion: { in: RATINGS }
end
