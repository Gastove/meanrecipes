class CreateDirections < ActiveRecord::Migration
  def change
    create_table :directions do |t|
      t.text :body
      t.integer :ordinality
      t.integer :recipe_id
    end
  end
end
