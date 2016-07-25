class Category < ApplicationRecord
  has_many :subcategories, :class_name => "Category", :foreign_key => "category_id", :dependent => :destroy
  #belongs_to :parent_category, :class_name => "Category", :foreign_key=>"parent_id"
  has_many :cartoons
end
