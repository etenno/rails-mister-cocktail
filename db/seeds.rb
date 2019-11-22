# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'


Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

text = open(url).read
data = JSON.parse(text)

data['drinks'].each do |hash|
  Ingredient.create(name: hash['strIngredient1'])
end

url = 'https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/53/2012/05/Mojito-recipe-1920x1263.jpg'
Cocktail.create(name: "Mojito", remote_photo_url: url)
url = 'https://www.inspiredtaste.net/wp-content/uploads/2011/10/White-Russian-Cocktail-Recipe-1-1200.jpg'
Cocktail.create(name: "White Russian", remote_photo_url: url)
url = 'https://www.homemadefoodjunkie.com/wp-content/uploads/2019/06/Mai-Tai-Garnished-720x720.jpg'
Cocktail.create(name: "Mai Tai", remote_photo_url: url)
url = 'https://www.simplyrecipes.com/wp-content/uploads/2017/02/2017-03-14-IrishCoffee-4.jpg'
Cocktail.create(name: "Irish Coffee", remote_photo_url: url)
url = 'https://www.thedrinkkings.com/wp-content/uploads/2014/06/Long-Island-Iced-Tea-4-630-630x867.jpg'
Cocktail.create(name: "Long Island Iced Tea", remote_photo_url: url)
url = 'https://cdn.liquor.com/wp-content/uploads/2017/09/01105541/classic-bloody-mary-720x720-recipe.jpg'
Cocktail.create(name: "Bloody Mary", remote_photo_url: url)
url = 'https://bakingamoment.com/wp-content/uploads/2019/08/IMG_5823-moscow-mule.jpg'
Cocktail.create(name: "Moscow Mule", remote_photo_url: url)
url = 'https://cdn.liquor.com/wp-content/uploads/2016/09/16092441/espresso-martini-1200x628-social.jpg'
Cocktail.create(name: "Espresso Martini", remote_photo_url: url)
url = 'http://www.pamperedchef.ca/iceberg/com/recipe/1445550-lg.jpg'
Cocktail.create(name: "Manhattan", remote_photo_url: url)
url = 'https://assets.punchdrink.com/wp-content/uploads/2017/10/Article-Best-Whiskey-Sour-Cocktail-Recipe-1.jpg'
Cocktail.create(name: "Whiskey Sour", remote_photo_url: url)
