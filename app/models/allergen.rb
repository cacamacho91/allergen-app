class Allergen < ApplicationRecord
  has_many :ingredient_allergens
  has_many :ingredients, through: :ingredient_allergens

  has_many :user_allergens
  has_many :users, through: :user_allergens

end
