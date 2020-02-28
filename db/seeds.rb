# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "Crushed Ice")
tonic = Ingredient.create(name: "Tonic")
gin = Ingredient.create(name: "Gin")
rum = Ingredient.create(name: "Rum")
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

# # gin and tonic
# mojito = Cocktail.create(name: "Mojito")
# file = File.open('/home/jokea/Desktop/Cocktail_images/mojito.jpg')
# mojito.photo.attach(io: file, filename: 'mojito.jpg', content_type: 'image/jpg')
# mojito.save
# ice_dose = Dose.new(description: "5 cubes, crushed")
# ice_dose.ingredient = ice
# ice_dose.cocktail = mojito
# ice_dose.save
# rum_dose = Dose.new(description: "2 parts")
# rum_dose.ingredient = rum
# rum_dose.cocktail = mojito
# rum_dose.save

# # gin and tonic
# gandt = Cocktail.create(name: "G & T")
# file = File.open('/home/jokea/Desktop/Cocktail_images/sexonbeach.jpg')
# gandt.photo.attach(io: file, filename: 'sexonbeach.jpg', content_type: 'image/jpg')
# gandt.save
# ice_dose = Dose.new(description: "3 cubes, crushed")
# ice_dose.ingredient = ice
# ice_dose.cocktail = gandt
# ice_dose.save
# lemon_dose = Dose.new(description: "A piece or two")
# lemon_dose.ingredient = lemon
# lemon_dose.cocktail = gandt
# lemon_dose.save
# gin_dose = Dose.new(description: "2 parts")
# gin_dose.ingredient = gin
# gin_dose.cocktail = gandt
# gin_dose.save
# tonic_dose = Dose.new(description: "6 parts")
# tonic_dose.ingredient = tonic
# tonic_dose.cocktail = gandt
# tonic_dose.save
