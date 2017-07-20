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
  first_name: 'Michel',
  last_name: 'Desjoyeaux',
  email: 'jean.michel@gmail.com',
  phone_number: '0296789596',
  password: 'jeanmichel',
  remote_profile_pic_url: 'http://philippe.hillion1.free.fr/Images/voile2/Michel_Desjoyeaux.jpg'
}
)

didier = User.create!(
{
  first_name: 'Roland',
  last_name: 'Jourdain',
  email: 'didier.patoche@gmail.com',
  phone_number: '0296758452',
  password: 'didier',
  remote_profile_pic_url: 'https://www.mymajorcompany.com/mmcMediaPlugin/media/image/3c/3c286dff32215.jpg'
}
)

thomas = User.create!(
{
  first_name: 'Thomas',
  last_name: 'Perouze',
  email: 'thomas.perouze@gmail.com',
  phone_number: '0679857485',
  password: 'thomas',
  remote_profile_pic_url: 'https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAguAAAAJDFmZWJkMzJhLWM3YTgtNGE3Zi05NGY0LTFiZjQ1ZmI4ODA2Zg.jpg'
}
)

vincent = User.create!(
{
  first_name: 'Vincent',
  last_name: 'Henry-Roger',
  email: 'vhrvhrvhr@gmail.com',
  phone_number: '0678958596',
  password: 'vincent',
  remote_profile_pic_url: 'https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAeeAAAAJDgxNjEwMzFlLTQwNjEtNGI4NC04YjI3LTE2NWI3Njc5OTBjNw.jpg'
}
)

hugo = User.create!(
{
  first_name: 'Hugo',
  last_name: 'Daniel',
  email: 'hugsdaniel@gmail.com',
  phone_number: '0678957895',
  password: 'hugodaniel',
  remote_profile_pic_url: 'http://static.tvtropes.org/pmwiki/pub/images/calvin2_834.jpg'
}
)

eric = User.create!(
{
  first_name: 'Eric',
  last_name: 'Tabarly',
  email: 'eric.tabarly@gmail.com',
  phone_number: '0678958895',
  password: 'erictabarly',
  remote_profile_pic_url: 'https://www.asso-eric-tabarly.org/modules/kameleon/upload/thumb/33690399480_ca1a3df315_o_width500-height.jpg'
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
  price: 0,
  remote_photo_url: 'https://www.wedemain.fr/photo/art/grande/8962502-14218333.jpg?v=1455678408'
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
  price: 10,
  remote_photo_url: 'http://www.voilesetvoiliers.com/ressources/images/643_944/25f54fb7f58d97d2e8ce39731d8e4f86.jpg'
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
  price: 50,
  remote_photo_url: 'https://www.lamaisondephoto.com/boutique/client/gfx/photos/produit/Penduick_86.jpg'
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
  price: 0,
  remote_photo_url: 'https://www.wedemain.fr/photo/art/grande/8962502-14218333.jpg?v=1455678408'
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
  price: 0,
  remote_photo_url: 'http://driveyouradventure.com/wp-content/uploads/2015/06/1621988_1459730057579271_1208409107_n-e14358493595391.jpg'
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
  price: 3000,
  remote_photo_url: 'https://www.azzaro.com/assets/img/underthepole/bg-good-1.jpg'
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
