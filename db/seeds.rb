# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.destroy_all
Store.destroy_all

# stores = []

# 5.times do |s|
#   stores << Store.create(
#     name: Faker::Company.name,
#     description: Faker::Lorem.sentence(5)
#   )
# end

# 20.times do |p|
#   Product.create(
#       name: Faker::Commerce.product_name,
#       description: Faker::Lorem.sentence(3),
#       price: Faker::Number.between(3000, 10000),
#       stock: Faker::Number.between(1, 10),
#       store: stores.sample
#     )
# end