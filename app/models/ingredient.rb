class Ingredient < ApplicationRecord
  has_many :ingredient_allergens
  has_many :allergens, through: :ingredient_allergens

  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients

  def allergic_to_me
    User.all.select do |user|
      user.allergens.any? {|allergen| self.allergens.include?(allergen) }
    end
  end

end
