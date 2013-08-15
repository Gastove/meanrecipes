# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

test_recipe_one = {
  :recipe_name => "Mean Manhattan",
  :ingredients => [
                   {
                     :ingredient_name => "rye whiskey",
                     :quantity => "8 parts"
                   },
                   {
                     :ingredient_name => "vermouth",
                     :quantity => "3 parts"
                   },
                   {
                     :ingredient_name => "Marasca Cherry",
                     :quantity => 1
                   },
                   {
                     :ingredient_name => "Angostura Bitters",
                     :quantity => "To Taste"
                   }
                  ],
  :directions => [
                  {
                    :ordinality => 1, 
                    :body => "Fill Pint Glass with Ice"
                  },
                  {
                    :ordinality => 2,
                    :body => "Add all liquid ingredients"
                  },
                  {
                    :ordinality => 3,
                    :body => "Stir until exterior of glass is very cold"
                  },
                  {
                    :ordinality => 4,
                    :body => "Pour into rocks glass"
                  },
                  {
                    :ordinality => 5,
                    :body => "Garnish with Cherry"
                  }
                 ]
}

test_recipe_two = {
  :recipe_name => "Mean Gin Martini",
  :ingredients => [
                   {
                     :ingredient_name => "Good Gin",
                     :quantity => "2 parts"
                   },
                   {
                     :ingredient_name => "Dry Vermouth",
                     :quantity => "1 part"
                   },
                  ],
  :directions => [
                  {
                    :ordinality => 1,
                    :body => "Stir Over Ice"
                  },
                  {
                    :ordinality => 2,
                    :body => "Pour into chilled martini glass"
                  },
                  {
                    :ordinality => 3,
                    :body => "Optional: garnish with lemon twist or olive"
                  }
                 ]
}

ingredients_one = Ingredient.create(test_recipe_one[:ingredients])
directions_one = Direction.create(test_recipe_one[:directions])

Recipe.create(
              recipe_name: test_recipe_one[:recipe_name], 
              ingredients: ingredients_one,
              directions: directions_one
              )

ingredients_two = Ingredient.create(test_recipe_two[:ingredients])
directions_two = Direction.create(test_recipe_two[:directions])

Recipe.create_from_hash(test_recipe_two)

# Recipe.create(
#               recipe_name: test_recipe_two[:recipe_name],
#               ingredients: ingredients_two,
#               directions: directions_two
#               )



