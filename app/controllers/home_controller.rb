class HomeController < ApplicationController
  def index
    subcategories_animated =  Category.where(:parent_id => Category.find_by(:name => 'Мультсериалы').id)
    animated = []

    subcategories_animated.each do  |category|
      category.subcategories.each do |sub|
        sub.cartoons.ids.each {|i|
          animated << i
        }
      end
    end

    ids_a = animated.shuffle[0..5]

    @random_animated = Cartoon.where(id: ids_a)
  end
=begin
  ids = User.pluck(:id).shuffle[0..4]
User.where(id: ids)
=end
end
