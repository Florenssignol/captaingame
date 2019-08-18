# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Character.create(name: "Zeus", life: 15, attack: 3, description: "God of gods")
Character.create(name: "Artemis", life: 12, attack: 2, description: "Goddess of the hunt")
Character.create(name: "Athena", life: 13, attack: 3, description: "Goddess of war")
Character.create(name: "Hades", life: 12, attack: 2, description: "God of the dead")
Character.create(name: "Hera", life: 15, attack: 4, description: "Queen of the Olympus")

Accessory.create(name: "bow", weapon: 2)
Accessory.create(name: "spear", weapon: 1)
Accessory.create(name: "sword", weapon: 2)
Accessory.create(name: "shield", shield: 2)
Accessory.create(name: "armor", shield: 3)