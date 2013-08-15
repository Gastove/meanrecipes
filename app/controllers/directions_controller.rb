
class DirectionsController < ApplicationController
  before_filter :find_recipe
  before_filter :find_direction, only: [:show, :edit, :update, :destroy]

  def show
    # this is now taken care of by your handy-dandy before filter
  end

  def new
    # this will automatically associate the direction to the recipe found by :find_recipe
    @direction = @recipe.directions.build
  end

  def create
    @direction = @recipe.directions.build(params[:direction])
    if @recipe.save
      flash[:notice] = "Your direction has been added."
      redirect_to @recipe
    else
      flash[:alert] = "Your direction has not been added."
      render :action => "new"
    end
  end

  def edit
    # this is now taken care of by your handy-dandy before filter
  end

  def update
    if @direction.update_attributes(params[:direction])
      flash[:notice] = "Your direction has been updated."
      redirect_to @recipe
    else
      flash[:alert] = "Your direction has not been updated."
      render :action => :edit
    end
  end

  def destroy
    @direction.destroy
    flash[:notice] = "Your direction has been deleted."
    redirect_to @recipe
  end

  private
    def find_recipe
      @recipe = Recipe.find(params[:recipe_id])
      rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The recipe you were looking for could not be found."
      redirect_to recipes_path
    end

    def find_direction
      @direction = @recipe.directions.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The direction you were looking for could not be found."
      redirect_to root_path
    end


end
