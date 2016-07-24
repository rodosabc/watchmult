# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Comment.delete_all
Category.delete_all
Cartoon.delete_all


User.create(:email => 'admin@example.com',
            :password => '123456',
            :password_confirmation => '123456',
            :admin => true)
User.create(:email => 'another_admin@example.com',
            :password => '123456',
            :password_confirmation => '123456',
            :admin => true)

Category.create(:name => 'Cartoons')
Category.create(:name => 'Toy Story', :category_id => Category.find_by(:name => 'Cartoons').id)
Category.create(:name => 'WALL-E', :category_id => Category.find_by(:name => 'Cartoons').id)
Category.create(:name => 'Cars', :category_id => Category.find_by(:name => 'Cartoons').id)


Category.create(:name => 'Animated series')
Category.create(:name => 'Spider-man', :category_id => Category.find_by(:name => 'Animated series').id)
Category.create(:name => 'Futurama', :category_id => Category.find_by(:name => 'Animated series').id)
Category.create(:name => 'Family guy', :category_id => Category.find_by(:name => 'Animated series').id)