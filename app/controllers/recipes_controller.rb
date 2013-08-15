
# Represents a recipe; should be able to show 

class RecipesController < ApplicationController

  def all
    @recipes = Recipe.find(:all)
  end

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
    @recipe = Recipe.new(params)
    @recipe.save
  end

end
