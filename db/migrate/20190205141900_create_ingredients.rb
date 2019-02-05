class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :calories
      t.string :unit
      t.integer :unit_amount

      t.timestamps
    end
  end
end
