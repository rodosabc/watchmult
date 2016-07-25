class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_nav_categories
  private

  def set_nav_categories
    @categories = Category.where(:parent_id => nil)
  end
end
