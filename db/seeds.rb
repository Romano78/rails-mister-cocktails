require 'json'
require 'open-uri'

#Getting data for Ingredients
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
ingredients = JSON.parse(ingredient_serialized)


puts "Deleting all Doses"
Dose.destroy_all
puts "Deleting all Ingredient"
Ingredient.destroy_all

ingredient_list = []


ingredients["drinks"].each do |ingredient|
    ingredient_list << ingredient["strIngredient1"]
end


puts "Creating Ingredients"

50.times do 
   ingredient = Ingredient.create!(
        name: ingredient_list.sample
    )
    puts "#{ingredient.name}"
end




puts "Deleting Cocktails"
Cocktail.destroy_all

puts "Creaking Cocktail"
3.times do
    Cocktail.create(
        name: Faker::TvShows::SouthPark.character,
        photo_url: "https://source.unsplash.com/1600x900/?cocktails"
    )
end
puts "done"