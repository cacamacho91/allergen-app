class User < ApplicationRecord
  has_many :user_allergens
  has_many :allergens, through: :user_allergens

  has_many :recipes
end
