# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Metro.destroy_all
Product.destroy_all
Store.destroy_all
Wishlist.destroy_all
User.destroy_all

users = []
stores = []

%w( love\ it hate\ it have\ it).each do |w|
  Wishlist.create(name: w)
end

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

Metro.create([
  {
    name: "Plaza de Puente Alto",
    line: "4",
    latitude: -33.6095,
    longitude: -70.5759
  },
  {
    name: "Protectora de la Infancia",
    line: "4",
    latitude: -33.5892,
    longitude: -70.5797
  },
  {
    name: "Hospital Sótero del Río",
    line: "4",
    latitude: -33.5765,
    longitude: -70.5824
  },
  {
    name: "Elisa Correa",
    line: "4",
    latitude: -33.569405,
    longitude: -70.583611
  },
  {
    name: "Los Quillayes",
    line: "4",
    latitude: -33.560627,
    longitude: -70.585289
  },
  {
    name: "San José de la Estrella",
    line: "4",
    latitude: -33.5534,
    longitude: -70.5866
  },
  {
    name: "Trinidad",
    line: "4",
    latitude: -33.547,
    longitude: -70.5877
  },
  {
    name: "Rojas Magallanes",
    line: "4",
    latitude: -33.5337,
    longitude: -70.5701
  },
  {
    name: "Vicente Valdés",
    line: "4, 5",
    latitude: -33.5263,
    longitude: -70.5882
  },
  {
    name: "Vicuña Mackena",
    line: "4, 4a",
    latitude: -33.5196,
    longitude: -70.5961
  },
  {
    name: "Macul",
    line: "4",
    latitude: -33.5088,
    longitude: -70.5895
  },
  {
    name: "Las Torres",
    line: "4",
    latitude: -33.500034,
    longitude: -70.587074
  },
  {
    name: "Quilín",
    line: "4",
    latitude: -33.4995,
    longitude: -70.5562
  },
  {
    name: "Los Presidentes",
    line: "4",
    latitude: -33.4898,
    longitude: -70.5465
  },
  { 
    name: "Grecia",
    line: "4",
    latitude: -33.4743,
    longitude: -70.55
  },
  {
    name: "Los Orientales",
    line: "4",
    latitude: -33.4639,
    longitude: -70.5702
  },
  {
    name: "Plaza Egaña",
    line: "4",
    latitude: -33.4533,
    longitude: -70.5707
  },
  {
    name: "Simón Bolívar",
    line: "4",
    latitude: -33.4463767,
    longitude: -70.5720765
  },
  {
    name: "Príncipe de Gales",
    line: "4",
    latitude: -33.4391496,
    longitude: -70.5733956
  },
  {
    name: "Francisco Bilbao",
    line: "4",
    latitude: -33.431484,
    longitude: -70.584641
  },
  {
    name: "Cristóbal Colón",
    line: "4",
    latitude: -33.4169,
    longitude: -70.5614
  },
  {
    name: "Los Domínicos",
    line: "1",
    latitude: -33.4131,
    longitude: -70.5479
  },
  {
    name: "Hernando de Magallanes",
    line: "1",
    latitude: -33.419,
    longitude: -70.5613
  },
  {
    name: "Manquehue",
    line: "1",
    latitude: -33.4093,
    longitude: -70.5687
  },
  {
    name: "Escuela Militar",
    line: "1",
    latitude: -33.4138,
    longitude: -70.5833
  },
  {
    name: "Alcántara",
    line: "1",
    latitude: -33.415325,
    longitude: -70.589453
  },
  {
    name: "El Golf",
    line: "1",
    latitude: -33.4166,
    longitude: -70.5957
  },
  {
    name: "Tobalaba",
    line: "1, 4",
    latitude: -33.4181,
    longitude: -70.6014
  },
  {
    name: "Los Leones",
    line: "1",
    latitude: -33.4220671,
    longitude: -70.6084053
  },
  {
    name: "Pedro de Valdivia",
    line: "1",
    latitude: -33.4255,
    longitude: -70.6143
  },
  {
    name: "Manuel Montt",
    line: "1",
    latitude: -33.4283,
    longitude: -70.6192
  },
  {
    name: "Salvador",
    line: "1",
    latitude: -33.4331,
    longitude: -70.6266
  },
  {
    name: "Bellavista de la Florida",
    line: "5",
    latitude: -33.5198,
    longitude: -70.5997
  },
  {
    name: "Mirador",
    line: "5",
    latitude: -33.512936,
    longitude: -70.606583
  },
  {
    name: "Pedrero",
    line: "5",
    latitude: -33.5078,
    longitude: -70.6127
  },
  {
    name: "San Joaquín",
    line: "5",
    latitude: -33.4983,
    longitude: -70.616
  },
  {
    name: "Camino Agrícola",
    line: "5",
    latitude: -33.4916,
    longitude: -70.6175
  },
  {
    name: "Carlos Valdovinos",
    line: "5",
    latitude: -33.4856,
    longitude: -70.6197
  },
  {
    name: "Rodrigo de Araya",
    line: "5",
    latitude: -33.4775,
    longitude: -70.6223
  },
  {
    name: "Ñuble",
    line: "5",
    latitude: -33.4672,
    longitude: -70.6252
  },
  {
    name: "Irarrázaval",
    line: "5",
    latitude: -33.4539,
    longitude: -70.6016
  },
  {
    name: "Santa Isabel",
    line: "5",
    latitude: -33.4471,
    longitude: -70.6304
  },
  {
    name: "Parque Bustamante",
    line: "5",
    latitude: -33.4314,
    longitude: -70.6248
  },
  {
    name: "Baquedano",
    line: "1, 5",
    latitude: -33.437,
    longitude: -70.6335
  },
  {
    name: "Bellas Artes",
    line: "5",
    latitude: -33.4365,
    longitude: -70.6443
  },
  {
    name: "Plaza de Armas",
    line: "5",
    latitude: -33.4373,
    longitude: -70.6506
  },
  {
    name: "Vespucio Norte",
    line: "2",
    latitude: -33.3804,
    longitude: -70.6468
  },
  {
    name: "Zapadores",
    line: "2",
    latitude: -33.3909,
    longitude: -70.6424
  },
  {
    name: "Dorsal",
    line: "2",
    latitude: -33.396,
    longitude: -70.6501
  },
  {
    name: "Einsten",
    line: "2",
    latitude: -33.405731,
    longitude: -70.643135
  },
  {
    name: "Cementerios",
    line: "2",
    latitude: -33.414074,
    longitude: -70.643562
  },
  {
    name: "Cerro Blanco",
    line: "2",
    latitude: -33.4189,
    longitude: -70.6461
  },
  {
    name: "Patronato",
    line: "2",
    latitude: -33.4296,
    longitude: -70.6471
  },
  {
    name: "Puente Cal y Canto",
    line: "2",
    latitude: -33.4327,
    longitude: -70.6525
  },
  {
    name: "Santa Ana",
    line: "2, 5",
    latitude: -33.438254,
    longitude: -70.659823
  },
  {
    name: "Universidad Católica",
    line: "1",
    latitude: -33.4402,
    longitude: -70.6405
  },
  {
    name: "Universidad de Chile",
    line: "1",
    latitude: -33.4438,
    longitude: -70.6504
  },
  {
    name: "Moneda",
    line: "1",
    latitude: -33.446,
    longitude: -70.6556
  },
  {
    name: "Los Héroes",
    line: "1, 2",
    latitude: -33.4461,
    longitude: -70.6604
  },{
    name: "Toesca",
    line: "2",
    latitude: -33.4529,
    longitude: -70.6585
  },
  {
    name: "Parque O`higgins",
    line: "2",
    latitude: -33.4605,
    longitude: -70.6569
  },
  {
    name: "Rondizzoni",
    line: "2",
    latitude: -33.47,
    longitude: -70.6563
  },
  {
    name: "Franklin",
    line: "2",
    latitude: -33.4729,
    longitude: -70.6427
  },
  {
    name: "El Llano",
    line: "2",
    latitude: -33.482703,
    longitude: -70.649445
  },
  {
    name: "San Miguel",
    line: "2",
    latitude: -33.4888,
    longitude: -70.6512
  },
  {
    name: "Lo Vial",
    line: "2",
    latitude: -33.497272,
    longitude: -70.653107
  },
  {
    name: "Departamental",
    line: "2",
    latitude: -33.5026,
    longitude: -70.6546
  },
  {
    name: "Ciudad del Niño",
    line: "2",
    latitude: -33.5101,
    longitude: -70.6568
  },
  {
    name: "Lo Ovalle",
    line: "2",
    latitude: -33.5167,
    longitude: -70.6499
  },
  {
    name: "El Parrón",
    line: "2",
    latitude: -33.5264675,
    longitude: -70.6609389
  },
  {
    name: "Santa Julia",
    line: "4a",
    latitude: -33.531105,
    longitude: -70.605499
  },
  {
    name: "La Granja",
    line: "4a",
    latitude: -33.5411,
    longitude: -70.616
  },
  {
    name: "Santa Rosa",
    line: "4a",
    latitude: -33.5425,
    longitude: -70.6341
  },
  {
    name: "San Ramón",
    line: "4a",
    latitude: -33.5412,
    longitude: -70.6432
  },
  {
    name: "La Cisterna",
    line: "2, 4a",
    latitude: -33.5374,
    longitude: -70.6643
  },
  {
    name: "República",
    line: "1",
    latitude: -33.448,
    longitude: -70.6676
  },
  {
    name: "Unión Latinoamericana",
    line: "1",
    latitude: -33.449467,
    longitude: -70.673203
  },
  {
    name: "Estación Central",
    line: "1",
    latitude: -33.451,
    longitude: -70.6792
  },
  {
    name: "Universidad de Santiago",
    line: "1",
    latitude: -33.4529,
    longitude: -70.6862
  },
  {
    name: "San Alberto Hurtado",
    line: "1",
    latitude: -33.454113,
    longitude: -70.692436
  },
  {
    name: "Ecuador",
    line: "1",
    latitude: -33.456,
    longitude: -70.6997
  },
  {
    name: "Las Rejas",
    line: "1",
    latitude: -33.456,
    longitude: -70.706
  },
  {
    name: "Pajaritos",
    line: "1",
    latitude: -33.458,
    longitude: -70.7158
  },
  {
    name: "Neptuno",
    line: "1",
    latitude: -33.451546,
    longitude: -70.722687
  },
    {
    name: "Cumming",
    line: "5",
    latitude: -33.4389898,
    longitude: -70.6687382
  },
  {
    name: "Quinta Normal",
    line: "5",
    latitude: -33.440282,
    longitude: -70.680357
  },
  {
    name: "Gruta de Lourdes",
    line: "5",
    latitude: -33.438262,
    longitude: -70.690838
  },
  {
    name: "Blanqueado",
    line: "5",
    latitude: -33.441505,
    longitude: -70.707321
  },
  {
    name: "Lo Prado",
    line: "5",
    latitude: -33.443298,
    longitude: -70.716412
  },
  {
    name: "San Pablo",
    line: "1, 5",
    latitude: -33.4442,
    longitude: -70.7233
  },
  {
    name: "Pudahuel",
    line: "5",
    latitude: -33.4448,
    longitude: -70.7407
  },
  {
    name: "Barrancas",
    line: "5",
    latitude: -33.452669,
    longitude: -70.739017
  },
  {
    name: "Laguna Sur",
    line: "5",
    latitude: -33.4608,
    longitude: -70.748
  },
  {
    name: "Las Parcelas",
    line: "5",
    latitude: -33.4754,
    longitude: -70.74
  },
  {
    name: "Montre Tabor",
    line: "5",
    latitude: -33.4808,
    longitude: -70.7477
  },
  {
    name: "Del Sol",
    line: "5",
    latitude: -33.489991,
    longitude: -70.752848
  },
  {
    name: "Santiago Bueras",
    line: "5",
    latitude: -33.4966,
    longitude: -70.7576
  },
  {
    name: "Plaza de Maipú",
    line: "5",
    latitude: -33.5105,
    longitude: -70.7572
  }
])
