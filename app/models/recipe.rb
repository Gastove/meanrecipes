
# Recipe class. Ties together Ingredients

class Recipe < ActiveRecord::Base

  attr_accessible :recipe_name, :ingredients, :directions
  validates :recipe_name, presence: true
  has_many :ingredients
  has_many :directions

  # This needs to be DRYed out. Find a Railsy way to do this.

  def self.create_from_hash(hash)
    ingredients = Ingredient.create(hash[:ingredients])
    directions = Direction.create(hash[:directions])
    self.create(
                  recipe_name: hash[:recipe_name],
                  ingredients: ingredients,
                  directions: directions
                  )
  end

  def self.create_from_json(hash)
    ingredients = Ingredient.create(hash["ingredients"])
    directions = Direction.create(hash["directions"])
    self.create(
                  recipe_name: hash["recipe_name"],
                  ingredients: ingredients,
                  directions: directions
                  )
  end

end
