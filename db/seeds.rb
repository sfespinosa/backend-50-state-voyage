# seed states data
full_states = File.read('./db/full_states.json')
full_data = JSON.parse(full_states)

coords_states = File.read('./db/lat_lng_states.json')
coords_data = JSON.parse(coords_states)

i = 0

while i < 50
    UsState.create(name: full_data[i]['state'], abbrv: full_data[i]['code'], nickname: full_data[i]['nickname'], capital_city: full_data[i]['capital_city'], flag_img_url: full_data[i]['state_flag_url'], capital_lat: coords_data[i]['lat'], capital_lng: coords_data[i]['long'])
    i += 1
end 

puts 'Seeds done!'