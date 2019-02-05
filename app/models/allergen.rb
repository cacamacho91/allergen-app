class Allergen < ApplicationRecord
  has_many :ingredient_allergens
  has_many :ingredients, through: :ingredient_allergens

  has_many :user_allergens
  has_many :users, through: :user_allergens

  #returns number of users who are alergic to me
  def num_users_allergic
    self.users.count
  end
end
