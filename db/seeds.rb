# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

text = open(url).read
data = JSON.parse(text)

data['drinks'].each do |hash|
  Ingredient.create(name: hash['strIngredient1'])
end

Cocktail.create(name: "Mojito")
Cocktail.create(name: "White Russian")
Cocktail.create(name: "Mai Tai")
Cocktail.create(name: "Irish Coffee")
Cocktail.create(name: "Long Island Iced Tea")
Cocktail.create(name: "Bloody Mary")
Cocktail.create(name: "Moscow Mule")
Cocktail.create(name: "Espresso Martini")
Cocktail.create(name: "Manhattan")
Cocktail.create(name: "Whiskey Sour")
