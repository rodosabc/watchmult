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

Category.create(:name => 'Мультфильмы',
                :category_url_name => 'cartoons',
                :description => "Description for cartoons category",
                :keywords => "не, хочу, это, больше")

Category.create(:name => 'Мультсериалы',
                :category_url_name => 'animated-series',
                :description => "Description for animated series category",
                :keywords => "не, хочу, это, больше")
Category.create(:name => 'Spider-man',
                :category_url_name => 'spider-man',
                :parent_id => Category.find_by(:name => 'Мультсериалы').id,
                :description => "Description for spider-man category",
                :keywords => "не, хочу, это, больше")
Category.create(:name => 'Spider-man 1s',
                :category_url_name => 'spider-man-s1',
                :parent_id => Category.find_by(:name => 'Spider-man').id,
                :description => "Description for spider-man-s1 category",
                :keywords => "не, хочу, это, больше")
Category.create(:name => 'Spider-man 2s',
                :category_url_name => 'spider-man-s2',
                :parent_id => Category.find_by(:name => 'Spider-man').id,
                :description => "Description for spider-man-s2 category",
                :keywords => "не, хочу, это, больше")
Category.create(:name => 'Futurama',
                :category_url_name => 'futurama',
                :parent_id => Category.find_by(:name => 'Мультсериалы').id,
                :description => "Description for futurama category",
                :keywords => "не, хочу, это, больше")
Category.create(:name => 'Family guy',
                :category_url_name => 'family-guy',
                :parent_id => Category.find_by(:name => 'Мультсериалы').id,
                :description => "Description for family-guy category",
                :keywords => "не, хочу, это, больше")

5.times do |i|

Cartoon.create!(:title => "Кирилл #{i}",
                :url_name => "kirill-#{i}",
                :cartoon_description => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.
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
                :category_id => Category.find_by(:name => 'Мультфильмы').id,
                :preview => File.new("#{Rails.root}/app/assets/images/heric.jpg"),
                :description => "Description for Кирилл #{i}",
                :keywords => "Keyword 1 Кирилл #{i},Keyword 2 Кирилл #{i},Keyword 3 Кирилл #{i}")
  Rating.create!(:cartoon_id => Cartoon.find_by(:title => "Кирилл #{i}").id)
end

5.times do |i|

  Cartoon.create!(:title => "Игорь #{i}",
                  :url_name => "igor-#{i}",
                  :cartoon_description => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.
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
                  :category_id => Category.find_by(:name => 'Мультфильмы').id,
                  :preview => File.new("#{Rails.root}/app/assets/images/heric.jpg"),
                  :description => "Description for Игорь #{i}",
                  :keywords => "Keyword 1 Игорь #{i},Keyword 2 Игорь #{i},Keyword 3 Игорь #{i}")
  Rating.create!(:cartoon_id => Cartoon.find_by(:title => "Игорь #{i}").id)
end




4.times do |i|
  Cartoon.create!(:title => "Человек паук 1 сезон #{i} серия",
                  :url_name => "spider-man-s1-e#{i}",
                  :cartoon_description => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.
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
                  :preview => File.new("#{Rails.root}/app/assets/images/spider1.jpg"),
                  :description => "Description for Человек паук 1 #{i}",
                  :keywords => "Keyword 1 Человек паук 1 #{i},Keyword 2 Человек паук 1 #{i},Keyword 3 Человек паук 1 #{i}")
  Rating.create!(:cartoon_id => Cartoon.find_by(:title => "Человек паук 1 сезон #{i} серия").id)
end

4.times do |i|
  Cartoon.create!(:title => "Человек паук 2 сезон #{i} серия",
                  :url_name => "spider-man-s2-e#{i}",
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
                  :preview => File.new("#{Rails.root}/app/assets/images/spider1.jpg"),
                  :description => "Description for Человек паук 2 #{i}",
                  :keywords => "Keyword 1 Человек паук 2 #{i},Keyword 2 Человек паук 2 #{i},Keyword 3 Человек паук 2 #{i}")
  Rating.create!(:cartoon_id => Cartoon.find_by(:title => "Человек паук 2 сезон #{i} серия").id)
end