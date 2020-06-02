# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
trex = Specie.create(name: "Tyrannosaurus Rex")
stega = Specie.create(name: "Stegosaurus")
tri = Specie.create(name: "Triceratops")

Dino.create(name: "T-Bone", happiness: 100, hunger: 70, tiredness: 50, specie_id: trex.id)

# source: https://en.wikipedia.org/wiki/African_art