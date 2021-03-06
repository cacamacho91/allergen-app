class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to user_path(@recipe.user)
  end
end
