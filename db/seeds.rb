# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dino.destroy_all
Specie.destroy_all

trex = Specie.create(name: "Tyrannosaurus Rex", sprite_url:'trex_color.png')
stega = Specie.create(name: "Stegosaurus")
tri = Specie.create(name: "Triceratops")

Dino.create(name: "T-Bone", happiness: 659, hunger:659, tiredness: 659, specie_id: trex.id)

