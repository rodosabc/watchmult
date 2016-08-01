class CategoriesController < ApplicationController
  def index
    set_meta_tags title: @category.name,
                 keywords: @category.keywords,
                 description: @category.description
    @category = Category.find_by(:category_url_name => params[:category_url_name])
    @categories = @category.subcategories
  end

  def show
    @category = Category.find(params[:id])
    @cartoons = Cartoon.where(:category_id => @category.id)
  end

  private

  def cartegory_params
    params.require(:category).permit(:url_name)
  end
end
