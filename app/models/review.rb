class Review < ApplicationRecord
  belongs_to :category

  validates :comment, presence: true, length: { minimum: 6, too_short: "must have at least 6 characters" }
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
