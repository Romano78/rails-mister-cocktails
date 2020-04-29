require 'json'
require 'open-uri'

#Getting data for Ingredients
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
ingredients = JSON.parse(ingredient_serialized)


puts "Deleting all"

Cocktail.destroy_all
Ingredient.destroy_all

puts "Creating Ingredients"

10.times do 
    Ingredient.create!(
        name: ingredients["drinks"][0...40].sample
    )

end

puts "Creating Cocktails"


puts "Creaking Cocktail"


Cocktail.create(
    name: Faker::TvShows::SouthPark.character,
    photo_url: "https://source.unsplash.com/1600x900/?cocktails"
)

puts "done"