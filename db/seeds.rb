require 'json'
require 'open-uri'

#Getting data for Ingredients
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
ingredients = JSON.parse(ingredient_serialized)

puts "Deleting all Ingredient"
Ingredient.destroy_all


puts "Creating Ingredients"
ingredients["drinks"].each do |ingredient|
    puts "#{ingredient["strIngredient1"]}"
    3.times do
        Ingredient.create(
            name: ingredient["strIngredient1"]
        )
    end
    
end

puts "Deleting Cocktails"
Cocktail.destroy_all

puts "Creaking Cocktail"
10.times do
    Cocktail.create(
        name: Faker::TvShows::SouthPark.character,
        photo_url: "https://source.unsplash.com/1600x900/?cocktails"
    )
end
puts "done"