class Review < ApplicationRecord
  belongs_to :category

  validates :comment, presence: true, length: { minimum: 6, too_short: "must have at least 6 characters" }
  validates :rating, inclusion: { in: 1..5 }
end
