# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb
# 1. Clean the database 🗑️
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
# ["chinese", "italian", "japanese", "french", "belgian"]
puts "Creating restaurants..."
Restaurant.create!(name: "My Favourite Sushi", address: "7 Boundary St, London E2 7JE", category: "japanese")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian")
puts "Created Pizza East"
Restaurant.create!(name: "Lornas Patisserie", address: "21 Wetherden Street, London E17 8EH", category: "french")
puts "Created Lornas Patisserie"
Restaurant.create!(name: "Chinese Out There", address: "6A The High St, London SE1 6PQ", category: "chinese")
puts "Created Chinese Out Theret"
Restaurant.create!(name: "Brussels To Go", address: "13a North Street, London N12 3AB", category: "belgian")
puts "Created Brussels To Go"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
