class Ingredient < ApplicationRecord
  has_many :ingredient_allergens
  has_many :allergens, through: :ingredient_allergens

  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients

end
