
class RecipesController < ApplicationController

  def index
    @recipes = Recipes.all
  end

  def show
    @recipe = Recipe.find(params[:name])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(params)
    @recipe.save
  end

  def generate_test_data
    test_recipe = {
      :recipe_name => "Mean Manhattan",
      :ingredients => [
        {
          :name => "rye whiskey",
          :quantity => "8 parts"
          },
        {
          :name => "vermouth",
          :quantity => "3 parts"
          },
        {
          :name => "Marasca Cherry",
          :quantity => 1
          },
        {
          :name => "Angostura Bitters",
          :quantity => "To Taste"
          }
        ],
      :directions => [
                      {
                        :ordinality => 1, 
                        :text => "Fill Pint Glass with Ice"
                      },
                      {
                        :ordinality => 2,
                        :text => "Add all liquid ingredients"
                      },
                      {
                        :ordinality => 3,
                        :text => "Stir until exterior of glass is very cold"
                      },
                      {
                        :ordinality => 4,
                        :text => "Pour into rocks glass"
                      },
                      {
                        :ordinality => 5,
                        :text => "Garnish with Cherry"
                      }
                     ]
    }
    test = Recipe.create(test_recipe)
  
  end

end
