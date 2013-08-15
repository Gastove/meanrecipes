
class RecipesController < ApplicationController
  before_filter :find_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
  end

  def show
    # @recipe = Recipe.find(params[:id])
    # this is now taken care of by your handy-dandy before filter
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(params[:recipe])
    # this way something will happen with your model validations...
    if @recipe.save
      flash[:notice] = "Your recipe has been created."
      redirect_to @recipe
    else
      flash[:alert] = "Your recipe has not been created."
      render :action => "new"
    end
  end

  def edit
    # @recipe = Recipe.find(params[:id])
    # this is now taken care of by your handy-dandy before filter
  end

  def update
    # @recipe = Recipe.find(params[:id])
    # this is now taken care of by your handy-dandy before filter
    if @recipe.update_attributes(params[:recipe])
      flash[:notice] = "Your recipe has been updated."
      redirect_to @recipe
    else
      flash[:alert] = "Your recipe has not been updated."
      render :action => :edit
    end
  end

  def destroy
    # @recipe = Recipe.find(params[:id])
    # this is now taken care of by your handy-dandy before filter
    @recipe.destroy
    flash[:notice] = "Your recipe has been deleted."
    redirect_to @recipes
  end

  private
    def find_recipe
      @recipe = Recipe.find(params[:id])
    end
end
