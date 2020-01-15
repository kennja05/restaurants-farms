# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.create!(name: "Ian's Grubb Hub")

f1 = Farm.create!(name:"Green Thumb Farmers",location:"New York")
f2 = Farm.create!(name:"Flatiron Farm Not Located in Flatiron", location: "Not Flatiron")
fr1 = Fruit.create!(name: "apple")
fr2 = Fruit.create!(name: "orange")
fr3 = Fruit.create!(name: "banana")
fr4 = Fruit.create!(name: "avocado")

FarmFruit.create!(farm:f1, fruit:fr1)
FarmFruit.create!(farm:f1, fruit:fr2)
FarmFruit.create!(farm:f2, fruit:fr3)
FarmFruit.create!(farm:f2, fruit:fr4)
