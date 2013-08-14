
class Ingredient < ActiveRecord::Base

  attr_accessible :ingredient_name, :quantity
  belongs_to :recipe
  validates :ingredient_name, :quantity, presence: true

end
