# t.string "name"
# t.text "adress"
# t.string "phone_number"
# t.string "category"
# in: ["chinese", "italian", "japanese", "french", "belgian"]

# clean the db
puts "db is being washed out before rearmement"
Restaurant.destroy_all

puts "Seed with 5 restaurants is beind setup"
El_Pepe = {name: "El Pepe", address: "Prinzenallee 25, 13359 Berlin", phone_number: "090229082074" , category: "french"}
Les_Valseuses = {name: "Les Valseuses", address: "Eberswalder Str. 28, 10437 Berlin", phone_number: "3333333333" , category: "french"}
La_Cantine_d_Augusta = {name: "La Cantine d'Augusta", address: "Langenscheidtstraße 6A, 10827 Berlin", phone_number: "44444444444" , category: "french"}
Chez_Maurice = {name: "Chez Maurice", address: "Bötzowstraße 39, 10407 Berlin", phone_number: "555555555" , category: "french"}
Lokal = {name: "Lokal", address: "Linienstraße 160, 10115 Berlin", phone_number: "66666666666666" , category: "french"}

[El_Pepe, Les_Valseuses, La_Cantine_d_Augusta, Chez_Maurice, Lokal].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "#{Restaurant.count} restaurants in database"
puts "Finished!"
