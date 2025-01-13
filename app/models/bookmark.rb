class Bookmark < ApplicationRecord
  belongs_to :recipe_id
  belongs_to :category_id
end
