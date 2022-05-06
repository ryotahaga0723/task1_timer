class Cooking < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :recipes
  validates :cooking_material, presence: true, length:  { maximum: 30 }
  validates :cooking_name, presence: true, length:  { maximum: 30 }
end
