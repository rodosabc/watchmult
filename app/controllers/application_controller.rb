class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_nav_categories
  private

  def set_nav_categories
    two_categories = Category.where(:parent_id => nil)
    @cartoon_cat = two_categories.first
    @animated_cat = two_categories.second
  end
end
