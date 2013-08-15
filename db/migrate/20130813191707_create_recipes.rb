class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :recipe_name
      t.timestamp :created_on
      t.timestamp :updated_on
    end
  end
end
