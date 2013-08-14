class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :ingredient_name
      t.string :quantity
      t.integer :recipe_id
      t.timestamp :created_on
      t.timestamp :updated_on
    end
  end
end
