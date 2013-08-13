
class RecipesController < ApplicationController


  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(
                         :name => params[:recipe_name]
                         :ingredients => Ingredients.create(params[:ingredients])
                         :directions => Directions.create(params[:directions])
                         )
    @recipe.save
  end

end
