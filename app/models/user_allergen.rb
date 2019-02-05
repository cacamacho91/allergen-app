class UserAllergen < ApplicationRecord
  belongs_to :allergen
  belongs_to :user
end
