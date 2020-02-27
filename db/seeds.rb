# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")

mojito = Cocktail.create(name: "Mojito")

dose = Dose.new(description: "6 of")
dose.ingredient = lemon
dose.cocktail = mojito
dose.save

doseice3 = Dose.new(description: "3 cubes")
doseice3.ingredient = ice
dose.cocktail = mojito
dose.save


negroni = Cocktail.create(name: "Negroni")
dosesplash = Dose.new(description: "A splash")
dosesplash.ingredient = ice
dosesplash.cocktail = negroni
dosesplash.save
