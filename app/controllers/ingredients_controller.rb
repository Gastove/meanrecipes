
class IngredientsController < ApplicationController
  before_filter :find_recipe
  before_filter :find_ingredient, only: [:show, :edit, :update, :destroy]


  def show
    # this is now taken care of by your handy-dandy before filter
  end

  def new
    # this will automatically associate the ingredient to the recipe found by :find_recipe
    @ingredient = @recipe.ingredients.build
  end

  def create
    @ingredient = @recipe.ingredients.build(params[:ingredient])
    if @recipe.save
      flash[:notice] = "Your ingredient has been added."
      redirect_to @recipe
    else
      flash[:alert] = "Your ingredient has not been added."
      render :action => "new"
    end
  end

  # you probably don't need to edit ingredients... just add and remove
  # def edit
  #   # this is now taken care of by your handy-dandy before filter
  # end

  # def update
  #   if @ingredient.update_attributes(params[:ingredient])
  #     flash[:notice] = "Your ingredient has been updated."
  #     redirect_to @recipe
  #   else
  #     flash[:alert] = "Your ingredient has not been updated."
  #     render :action => :edit
  #   end
  # end

  def destroy
    @ingredient.destroy
    flash[:notice] = "Your ingredient has been deleted."
    redirect_to @recipe
  end

  private
    def find_recipe
      @recipe = Recipe.find(params[:recipe_id])
      rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The recipe you were looking for could not be found."
      redirect_to recipes_path
    end

    def find_ingredient
      @ingredient = @recipe.ingredients.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The ingredient you were looking for could not be found."
      redirect_to root_path
    end

end
