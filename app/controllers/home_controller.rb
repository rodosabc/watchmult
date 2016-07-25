class HomeController < ApplicationController
  def index
    subcategories_cartoons =  Category.where(:category_id => Category.find_by(:name => 'Мультфильмы').id)
    subcategories_animated =  Category.where(:category_id => Category.find_by(:name => 'Мультсериалы').id)
    cartoons = []
    animated = []
    subcategories_cartoons.each do  |category|
      category.cartoons.ids.each {|i|
        cartoons << i
      }
    end

    subcategories_animated.each do  |category|
      category.cartoons.ids.each {|i|
        animated << i
      }
    end

    ids_c = cartoons.shuffle[0..5]
    ids_a = animated.shuffle[0..5]

    @random_cartoons = Cartoon.where(id: ids_c)
    @random_animated = Cartoon.where(id: ids_a)
  end
=begin
  ids = User.pluck(:id).shuffle[0..4]
User.where(id: ids)
=end
end
