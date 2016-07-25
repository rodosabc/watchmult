class CategoriesController < ApplicationController
  def index
  end

  def show
    @category = Category.find(params[:id])
    @cartoons = Cartoon.where(:category_id => @category.id)
  end
end
