# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.destroy_all
Store.destroy_all
Wishlist.destroy_all
User.destroy_all
Metro.destroy_all

users = []
stores = []

5.times do |u|
  users << User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password",
    role: 1,
    gender: "female"
  )
end

5.times do |s|
  u = users[s]
  stores << Store.create!(
    name: Faker::Company.name,
    description: Faker::Lorem.sentence(5),
    phone_number: Faker::PhoneNumber.cell_phone,
    user: u
  )
end

20.times do |p|
  Product.create(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.sentence(3),
    price: Faker::Number.between(3000, 10000),
    stock: Faker::Number.between(1, 10),
    store: stores.sample
  )
end

Metro.create(
  name: "Baquedano",
  line: "1, 5",
  latitude: -33.437323500,
  longitude: -70.633234800
  )

Metro.create(
  name: "Moneda",
  line: "1",
  latitude: -33.446094900,
  longitude: -70.655603600
  )

Metro.create(
  name: "Los Domínicos",
  line: "1",
  latitude: -33.407895000,
  longitude: -70.545109000
  )

Metro.create(
  name: "Parque O'Higgins",
  line: "2",
  latitude: -33.460464000,
  longitude: -70.656868000
  )

Metro.create(
  name: "Franklin",
  line: "2",
  latitude: -33.476217000,
  longitude: -70.649632000
  )

Metro.create(
  name: "Plaza Egaña",
  line: "4",
  latitude: -33.453278000,
  longitude: -70.570732000
  )

Metro.create(
  name: "Plaza Puente Alto",
  line: "4",
  latitude: -33.609547000,
  longitude: -70.575905000
  )

Metro.create(
  name: "San Ramón",
  line: "4a",
  latitude: -33.541236800,
  longitude: -70.643227700
  )

Metro.create(
  name: "Santa Rosa",
  line: "4a",
  latitude: -33.542511000,
  longitude: -70.634125000
  )

Metro.create(
  name: "Irarrázabal",
  line: "5",
  latitude: -33.453633300,
  longitude: -70.628886800
  )

Metro.create(
  name: "Quinta Normal",
  line: "5",
  latitude: -33.440282000,
  longitude: -70.680357000
  )


