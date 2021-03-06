# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.find_or_create_by(name: "Mountain");
Category.find_or_create_by(name: "Racer");
Category.find_or_create_by(name: "Street");


5.times do |b|
  Bicycle.find_or_create_by(
    info: "Information about bicycle ",
    gears: rand(3..21),
    price: rand(2999..5999),
    category: Category.offset(rand(Category.count)).first
    )
end


3.times do |r|
  Rental.find_or_create_by(
    start_date:Date.new(2016, 4, 4),
    end_date: Date.new(2016, 4, 5),
    email: "email#{r}@example.com",
    bicycle: Bicycle.offset(rand(Bicycle.count)).first
  )
end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')