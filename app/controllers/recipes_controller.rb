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
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    @recipe.save
    redirect_to recipe_path(@recipe)
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end
  
  def update
    @recipe = Recipe.find(params[:id])
    # どのカラムをアップデートするのか許可する
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end
  
  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect_to user_path(recipe.user), notice: "レシピを削除しました。"
  end
  private
  # ストロングパラメータ　受け取る値に制限をかけている。この場合だと:recipeを変えようとしても許可されているもの以外はいじれないようになってる
  def recipe_params
    params.require(:recipe).permit(:title, :body, :image)
  end
end
