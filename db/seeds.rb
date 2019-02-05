User.destroy_all
Recipe.destroy_all
RecipeIngredient.destroy_all
Ingredient.destroy_all
IngredientAllergen.destroy_all
Allergen.destroy_all
UserAllergen.destroy_all

users = [
  {name: "Jake"},
  {name: "Chris"},
  {name: "Heston"}
]
User.create(users)

recipes = [
  {title: "Lasagne", user: User.second, servings: 4},
  {title: "Jakes Jumbalaya", user: User.first, servings: 2},
  {title: "Tortillini", user: User.first, servings: 1},
  {title: "Heston's Hot Dawwgs", user: User.third, servings: 4}
]
Recipe.create(recipes)

ingredients = [
  {name: "Pasta", calories: 300, unit: "g", unit_amount: 500},
  {name: "Tomatoes", calories: 50, unit: "g", unit_amount: 25},
  {name: "Basil", calories: 300, unit: "g", unit_amount: 500},
  {name: "Meat", calories: 300, unit: "g", unit_amount: 500},
  {name: "Cheese", calories: 200, unit: "g", unit_amount: 75},
  {name: "Butter", calories: 400, unit: "g", unit_amount: 200}
]
Ingredient.create(ingredients)

allergens = [
  {name: "gluten"},
  {name: "dairy"},
  {name: "meat"}
]
Allergen.create(allergens)

Recipe.first.ingredients << [Ingredient.first, Ingredient.second, Ingredient.third, Ingredient.fourth, Ingredient.fifth]
Recipe.second.ingredients << [Ingredient.second, Ingredient.third, Ingredient.fourth, Ingredient.fifth, Ingredient.find_by(name: "Butter")]
Recipe.third.ingredients << [Ingredient.first, Ingredient.second, Ingredient.third, Ingredient.fifth]
Recipe.fourth.ingredients << [Ingredient.fourth, Ingredient.fifth]

User.first.allergens << Allergen.second
User.second.allergens << Allergen.first
User.second.allergens << Allergen.second
User.third.allergens << Allergen.third

Ingredient.first.allergens << Allergen.first
Ingredient.fourth.allergens << Allergen.third
Ingredient.fifth.allergens << Allergen.second
Ingredient.find_by(name: "Butter").allergens << Allergen.second
