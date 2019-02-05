class CreateUserAllergens < ActiveRecord::Migration[5.2]
  def change
    create_table :user_allergens do |t|
      t.integer :allergen_id
      t.integer :user_id

      t.timestamps
    end
  end
end
