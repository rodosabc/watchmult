class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_nav_categories, :set_style_classes
  private

  def set_nav_categories
    two_categories = Category.where(:parent_id => nil)
    @cartoon_cat = two_categories.first
    @animated_cat = two_categories.second
  end
  def set_style_classes
=begin
    parameters = Rails.application.routes.recognize_path(request.path)
    if parameters[:controller] == 'home'
      @hclass = 'active'
    end
    if parameters[:category_id] != nil
      category = Category.find(parameters[:category_id])

      if category.name == 'Мультфильмы'
        @cartoon_class = 'active'
        return
      end
      if category.name == 'Мультсериалы'
        @aclass = 'active'
        return
      end
      if Category.find(category.parent_id).name == 'Мультфильмы'
        @cartoon_class = 'active'
        return
      end
    end
=end
  end
end
