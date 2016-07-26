class CategoriesController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @categories = @category.subcategories
  end

  def show
    @category = Category.find(params[:id])
    @cartoons = Cartoon.where(:category_id => @category.id)
  end

  private

  def cartegory_params
    params.require(:category).permit(:category_id)
  end
end
