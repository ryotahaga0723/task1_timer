class RecipeMaterial < ApplicationRecord
  belongs_to :recipe

  validates :material, presence: true, length:  { maximum: 30 }
  validates :quantity, presence: true, length:  { maximum: 30 }
end
