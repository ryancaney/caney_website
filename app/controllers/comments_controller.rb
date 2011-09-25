class CommentsController < ApplicationController
  # How the website handles a new comment
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.create(params[:comment])
    redirect_to recipe_path(@recipe)
  end

  # How the website deletes a comment
  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.find(params[:id])
    @comment.destroy
    redirect_to recipe_path(@recipe)
  end
end
