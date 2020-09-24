class RecipesController < ApplicationController
  def index
  end

  def new
    @recipe = Recipe.new
  end

  def create
  end

  private
  def message_params
    params.require(:recipe).permit(:recipe_name, :explanation, :material_1, :material_2, :material_3, :material_4, :material_5, :material_6, :material_7, :material_8, :material_9, :material_10, :material_1_amount, :material_2_amount, :material_3_amount, :material_4_amount, :material_5_amount, :material_6_amount, :material_7_amount, :material_8_amount, :material_9_amount, :material_10_amount, :how_to_make_1, :how_to_make_2, :how_to_make_3, :how_to_make_4, :how_to_make_5, :how_to_make_6, :how_to_make_7, :how_to_make_8, :how_to_make_9, :how_to_make_10, :point, :image).merge(user_id: current_user.id)
  end

end
