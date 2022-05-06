class Recipe < ApplicationRecord
  has_and_belongs_to_many :cookings
  has_many :recipe_materials
  has_many :recipe_procedures
  has_one_attached :image

  validates :recipe_name, presence: true, length:  { maximum: 30 }
  validates :recipe_time, presence: true, numericality: { only_integer: true }
end
