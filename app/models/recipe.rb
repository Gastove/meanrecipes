
# Recipe class. Ties together Ingredients

class Recipe < ActiveRecord::Base

  has_many :ingredients, :directions
  validates :name, :ingredients, :directions, presence: true
  validates_associated :ingredients, :directions

end