
# Recipe class. Ties together Ingredients

class Recipe < ActiveRecord::Base

  attr_accessible :recipe_name
  validates :recipe_name, presence: true
  has_many :ingredients
  has_many :directions
end
