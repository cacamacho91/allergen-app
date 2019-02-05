class IngredientAllergen < ApplicationRecord
  belongs_to :allergen
  belongs_to :ingredient
end
