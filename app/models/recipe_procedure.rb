class RecipeProcedure < ApplicationRecord
  belongs_to :recipe

  validates :procedure, presence: true
end
