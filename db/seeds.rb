# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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

Recipe.create(test_recipe)

