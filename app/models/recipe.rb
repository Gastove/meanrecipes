
# Recipe class. Ties together Ingredients

class Recipe < ActiveRecord::Base

  attr_accessible :recipe_name, :ingredients, :directions
  validates :recipe_name, :ingredients, :directions, presence: true
  has_many :ingredients
  has_many :directions
  validates_associated :ingredients, :directions

end
