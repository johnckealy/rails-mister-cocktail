require 'open-uri'
require 'json'


Ingredient.create(name: "lemon")
Ingredient.create(name: "Crushed Ice")
Ingredient.create(name: "Tonic")
Ingredient.create(name: "Gin")
Ingredient.create(name: "Rum")
Ingredient.create(name: "Vodka")
Ingredient.create(name: "Ginger beer")
Ingredient.create(name: "Tequila")
Ingredient.create(name: "Ginger ale")
Ingredient.create(name: "Soda water")
Ingredient.create(name: "Amaretto")
Ingredient.create(name: "Sugar")
Ingredient.create(name: "Lime")
Ingredient.create(name: "Triple sec")
Ingredient.create(name: "Pernod")
Ingredient.create(name: "Cognac")
Ingredient.create(name: "Absenthe")
Ingredient.create(name: "Sweet vermouth")
Ingredient.create(name: "Ayauasca")

random_doses = ["A piece", "2 parts", "4 parts", "A thimble", "A sh*t load", "6 parts", "10 parts", "A dash"]


# gin and tonic
10.times do
  random_cocktail = JSON.load(open("https://www.thecocktaildb.com/api/json/v1/1/random.php"))
  random_image_url = "https://loremflickr.com/500/350/cocktail,drink"
  name = random_cocktail["drinks"][0]["strDrink"]

  cocktail = Cocktail.create(name: name)
  file = URI.open(random_image_url)
  cocktail.photo.attach(io: file, filename: "cocktail_#{name.split[0]}.jpg", content_type: 'image/jpg')
  cocktail.save
  rand(7).times do
    dose = Dose.new(description: random_doses.sample)
    dose.ingredient = Ingredient.all.sample
    dose.cocktail = cocktail
    dose.save
  end
end
