# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Comment.delete_all
Rating.delete_all
Cartoon.delete_all
Category.delete_all



User.create(:email => 'admin@example.com',
            :password => '123456',
            :password_confirmation => '123456',
            :admin => true)
User.create(:email => 'another_admin@example.com',
            :password => '123456',
            :password_confirmation => '123456',
            :admin => true)

Category.create(:name => 'Мультфильмы')
Category.create(:name => 'Toy Story', :parent_id => Category.find_by(:name => 'Мультфильмы').id)
Category.create(:name => 'WALL-E', :parent_id => Category.find_by(:name => 'Мультфильмы').id)
Category.create(:name => 'Cars', :parent_id => Category.find_by(:name => 'Мультфильмы').id)


Category.create(:name => 'Мультсериалы')
Category.create(:name => 'Spider-man', :parent_id => Category.find_by(:name => 'Мультсериалы').id)
Category.create(:name => 'Spider-man 1s', :parent_id => Category.find_by(:name => 'Spider-man').id)
Category.create(:name => 'Spider-man 2s', :parent_id => Category.find_by(:name => 'Spider-man').id)
Category.create(:name => 'Futurama', :parent_id => Category.find_by(:name => 'Мультсериалы').id)
Category.create(:name => 'Family guy', :parent_id => Category.find_by(:name => 'Мультсериалы').id)

10.times do |i|

Cartoon.create!(:title => "Cars #{i}",
                :description => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.
              Nam faucibus dui in tellus vestibulum, eu gravida quam pellentesque. Quisque
              nisl erat, lacinia et enim vitae, vulputate elementum ante. Pellentesque habitant
               morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse
               eget pellentesque enim. Donec sagittis odio vel elit semper tempor. Suspendisse porta
               sem velit. Vivamus ornare volutpat tellus ac vehicula. Cras rhoncus lectus ut
              volutpat eleifend. Maecenas ornare lacinia ligula, iaculis luctus ex ultricies at.
              Duis et mauris in metus suscipit venenatis. Maecenas id placerat mauris. Cras
              dictum dictum lectus, at tristique sapien accumsan sit amet. Quisque aliquam
              tincidunt nunc vel consequat. Nam venenatis, est quis sagittis rutrum, arcu
              eros faucibus felis, vitae dapibus mi sem non lacus. Aenean euismod pulvinar
               neque a eleifend. ',
                :part => i,
                :cartoon_url => 'http://vk.com',
                :views => 0,
                :category_id => Category.find_by(:name => 'Cars').id,
                :preview => File.new("#{Rails.root}/app/assets/images/heric.jpg"))
  Rating.create!(:cartoon_id => Cartoon.find_by(:title => "Cars #{i}").id)
end


4.times do |i|
  Cartoon.create!(:title => "Spider man1s #{i}",
                  :description => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.
              Nam faucibus dui in tellus vestibulum, eu gravida quam pellentesque. Quisque
              nisl erat, lacinia et enim vitae, vulputate elementum ante. Pellentesque habitant
               morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse
               eget pellentesque enim. Donec sagittis odio vel elit semper tempor. Suspendisse porta
               sem velit. Vivamus ornare volutpat tellus ac vehicula. Cras rhoncus lectus ut
              volutpat eleifend. Maecenas ornare lacinia ligula, iaculis luctus ex ultricies at.
              Duis et mauris in metus suscipit venenatis. Maecenas id placerat mauris. Cras
              dictum dictum lectus, at tristique sapien accumsan sit amet. Quisque aliquam
              tincidunt nunc vel consequat. Nam venenatis, est quis sagittis rutrum, arcu
              eros faucibus felis, vitae dapibus mi sem non lacus. Aenean euismod pulvinar
               neque a eleifend. ',
                  :part => i,
                  :cartoon_url => 'http://vk.com',
                  :views => 0,
                  :category_id => Category.find_by(:name => 'Spider-man 1s').id,
                  :preview => File.new("#{Rails.root}/app/assets/images/spider1.jpg"))
  Rating.create!(:cartoon_id => Cartoon.find_by(:title => "Spider man1s #{i}").id)
end

4.times do |i|
  Cartoon.create!(:title => "Spider man2s #{i}",
                  :description => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.
              Nam faucibus dui in tellus vestibulum, eu gravida quam pellentesque. Quisque
              nisl erat, lacinia et enim vitae, vulputate elementum ante. Pellentesque habitant
               morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse
               eget pellentesque enim. Donec sagittis odio vel elit semper tempor. Suspendisse porta
               sem velit. Vivamus ornare volutpat tellus ac vehicula. Cras rhoncus lectus ut
              volutpat eleifend. Maecenas ornare lacinia ligula, iaculis luctus ex ultricies at.
              Duis et mauris in metus suscipit venenatis. Maecenas id placerat mauris. Cras
              dictum dictum lectus, at tristique sapien accumsan sit amet. Quisque aliquam
              tincidunt nunc vel consequat. Nam venenatis, est quis sagittis rutrum, arcu
              eros faucibus felis, vitae dapibus mi sem non lacus. Aenean euismod pulvinar
               neque a eleifend. ',
                  :part => i,
                  :cartoon_url => 'http://vk.com',
                  :views => 0,
                  :category_id => Category.find_by(:name => 'Spider-man 2s').id,
                  :preview => File.new("#{Rails.root}/app/assets/images/spider1.jpg"))
  Rating.create!(:cartoon_id => Cartoon.find_by(:title => "Spider man2s #{i}").id)
end