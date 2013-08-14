
class IngredientsController < ApplicationController

  def create
    ingredient = Ingredient.new(
                                :name => params[:name]
                                :quantity => params[:quantity]
                                )
    ingredient.save

  end

end
