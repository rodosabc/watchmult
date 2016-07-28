class Category < ApplicationRecord
  has_many :subcategories, :class_name => "Category", :foreign_key => "parent_id", :dependent => :destroy
  has_many :cartoons
  validates :name, presence: true
end
