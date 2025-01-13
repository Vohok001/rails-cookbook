# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "cleaning db..."
Bookmark.destroy_all
Recipe.destroy_all #so don't duplicate everytime you run
Category.destroy_all
puts "creating recipes"
  recipe = Recipe.new(
    name: "Blueberry pancakes",
    description: "Light, fluffy and fruity, these pancakes are an American classic. Serve them stacked high with syrup and extra fruit",
    image_url: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-1273456_8-a5710e5.jpg?quality=90&webp=true&resize=440,400",
    rating: rand(0..5)
  )
  recipe.save

  recipe = Recipe.new(
    name: "Chocolate cake",
    description: "Master the chocolate cake with an airy, light sponge and rich buttercream filling.",
    image_url: "https://scientificallysweet.com/wp-content/uploads/2020/09/IMG_4117-feature.jpg",
    rating: rand(0..5)
  )
  recipe.save

  recipe = Recipe.new(
    name: "Lasagna",
    description: "This classic lasagna recipe is made with an easy meat sauce as the base. Layer the sauce with noodles and cheese, then bake until bubbly!",
    image_url: "https://www.eatingwell.com/thmb/g2-SPKemdPybZTIGBKowO3DNOrE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(1965x1419:1967x1421)/Veggie-Lasagna-beauty-557-5cb561c36d4a409dbd587417b8c6682d.jpg",
    rating: rand(0..5)
  )
  recipe.save

  recipe = Recipe.new(
    name: "Chicken Karahi",
    description: "This favourite Pakistani curry is traditionally made with goat or lamb, but this version uses chicken. Serve it with naan or rice.",
    image_url: "https://images.immediate.co.uk/production/volatile/sites/30/2024/12/Chicken-Karahi-847828f.jpg?quality=90&webp=true&resize=600,545",
    rating: rand(0..5)
  )
  recipe.save

  Recipe.create!(
    name: "Supergreen salad",
    description: "This super salad packs a crunch, with seeds, lots of veg and protein-filled chickpeas",
    image_url: "https://www.wcrf.org/wp-content/uploads/2024/08/Super-green-salad-SQ.jpg",
    rating: 3.5
  )
puts "finished! created #{Recipe.count} recipes!"
