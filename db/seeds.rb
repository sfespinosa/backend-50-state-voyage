# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

full_states = File.read('./db/full_states.json')
full_data = JSON.parse(full_states)

coords_states = File.read('./db/lat_lng_states.json')
coords_data = JSON.parse(coords_states)


UsState.create(name: full_data[0]['state'], abbrv: full_data[0]['code'], nickname: full_data[0]['nickname'], capital_city: full_data[0]['capital_city'], flag_img_url: full_data[0]['state_flag_url'], capital_lat: coords_data[0]['lat'], capital_lng: coords_data[0]['long'])

puts 'Seeds done!'