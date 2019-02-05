class CreateIngredientAllergens < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredient_allergens do |t|
      t.integer :allergen_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
