class Review < ApplicationRecord
  belongs_to :restaurant

  RATINGS = [0, 1, 2, 3, 4, 5]

  validates :restaurant_id, presence: true
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: Review::RATINGS }

end
