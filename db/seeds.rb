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
    info: "Info #{b}",
    gears: 3,
    price: 2999,
    category: Category.offset(rand(Category.count)).first
    )
end


3.times do |r|
  Rental.find_or_create_by(
    start_date:Date.new(2016, 4, 4),
    end_date: Date.new(2016, 4, 5),
    email: "email #{r}"
  )
end
