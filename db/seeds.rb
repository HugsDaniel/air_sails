# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Trip.destroy_all
User.destroy_all

jeanmich = User.create!(
{
  first_name: 'Jean',
  last_name: 'Michel',
  email: 'jean.michel@gmail.com',
  phone_number: '0296789596',
  password: 'jeanmichel'
}
)

didier = User.create!(
{
  first_name: 'Didier',
  last_name: 'Patoulachi',
  email: 'didier.patoche@gmail.com',
  phone_number: '0296758452',
  password: 'didier'
}
)

thomas = User.create!(
{
  first_name: 'Thomas',
  last_name: 'Perouze',
  email: 'thomas.perouze@gmail.com',
  phone_number: '0679857485',
  password: 'thomas'
}
)

vincent = User.create!(
{
  first_name: 'Vincent',
  last_name: 'Henry-Roger',
  email: 'vhrvhrvhr@gmail.com',
  phone_number: '0678958596',
  password: 'vincent'
}
)

hugo = User.create!(
{
  first_name: 'Hugo',
  last_name: 'Daniel',
  email: 'hugsdaniel@gmail.com',
  phone_number: '0678957895',
  password: 'hugodaniel'
}
)

eric = User.create!(
{
  first_name: 'Eric',
  last_name: 'Tabarly',
  email: 'eric.tabarly@gmail.com',
  phone_number: '0678958895',
  password: 'erictabarly'
}
)


trip_hugo_sudaf = Trip.create!(
{
  captain: hugo,
  departure_port: 'Concarneau',
  arrival_port: 'Cape Town',
  departure_date: Date.today,
  duration: 60,
  distance: 10000,
  boat_name: 'Nomade des Mers',
  description: 'Expédition Low-Tech Lab',
  capacity: 7,
  price: 0
}
)

trip_vincent = Trip.create!(
{
  captain: vincent,
  departure_port: 'Piriac-sur-Mer',
  arrival_port: 'Île Dumet',
  departure_date: Date.today,
  duration: 1,
  distance: 3,
  boat_name: 'Pen Ker',
  description: 'Cap breton',
  capacity: 5,
  price: 10
}
)

trip_eric = Trip.create!(
{
  captain: eric,
  departure_port: 'Piriac-sur-Mer',
  arrival_port: 'La Trinité sur Mer',
  departure_date: Date.today + 1.day,
  duration: 2,
  distance: 80,
  boat_name: 'Pen Duick',
  description: 'Convoyage vers La Trinité en compagnie d\'Eric Tabarly',
  capacity: 3,
  price: 50
}
)

trip_hugo_bresil = Trip.create!(
{
  captain: hugo,
  departure_port: 'Concarneau',
  arrival_port: 'Rio de Janeiro',
  departure_date: Date.today + 1.year,
  duration: 60,
  distance: 10000,
  boat_name: 'Nomade des Mers',
  description: 'Low-tech Lab Expédition',
  capacity: 7,
  price: 0
}
)

trip_gob = Trip.create!(
{
  captain: hugo,
  departure_port: 'Concarneau',
  arrival_port: 'Port au Prince',
  departure_date: Date.today + 2.year,
  duration: 20,
  distance: 6000,
  boat_name: 'Gold of Bengal',
  description: '',
  capacity: 2,
  price: 0
}
)

trip_didier = Trip.create!(
{
  captain: didier,
  departure_port: 'Concarneau',
  arrival_port: 'Umanacq',
  departure_date: Date.today + 3.week,
  duration: 40,
  distance: 9000,
  boat_name: 'Why',
  description: 'Under The Pole Expedition',
  capacity: 8,
  price: 3000
}
)


trip_vincent.bookings.create!(
{
  user: jeanmich,
  price: trip_vincent.price
}
)

trip_vincent.bookings.create!(
{
  user: eric,
  price: trip_vincent.price
}
)

trip_hugo_sudaf.bookings.create!(
{
  user: didier,
  price: trip_hugo_sudaf.price
}
)

trip_hugo_sudaf.bookings.create!(
{
  user: thomas,
  price: trip_hugo_sudaf.price
}
)

trip_hugo_bresil.bookings.create!(
{
  user: eric,
  price: trip_hugo_bresil.price
}
)

trip_hugo_bresil.bookings.create!(
{
  user: vincent,
  price: trip_hugo_bresil.price
}
)

trip_gob.bookings.create!(
{
  user: vincent,
  price: trip_gob.price
}
)

trip_didier.bookings.create!(
{
  user: vincent,
  price: trip_didier.price
}
)

trip_didier.bookings.create!(
{
  user: hugo,
  price: trip_didier.price
}
)

trip_didier.bookings.create!(
{
  user: thomas,
  price: trip_didier.price
}
)

trip_didier.bookings.create!(
{
  user: eric,
  price: trip_didier.price
}
)
