Rails.application.routes.draw do
  resources :user_allergens
  resources :ingredient_allergens
  resources :allergens
  resources :recipe_ingredients
  resources :ingredients
  resources :recipes
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
