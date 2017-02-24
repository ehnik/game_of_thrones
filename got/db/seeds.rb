# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
House.create(name: "Stark")
House.create(name: "Targaryen")
House.create(name: "Lannister")
House.create(name: "Baratheon")

Character.create(name: "Sansa Stark", house_id: 1)
Character.create(name: "Robb Stark", house_id: 1)
Character.create(name: "Brandon Stark", house_id: 1)
Character.create(name: "Lady Catelyn Stark", house_id: 1)


Character.create(name: "Tyron Lannister", house_id: 3)
Character.create(name: "Twynn Lannister", house_id: 3)
Character.create(name: "Ser Jaime Lannister", house_id: 3)
Character.create(name: "Ser Jaime Lannister", house_id: 3)

Character.create(name: "Cersei Baratheon", house_id: 4)
Character.create(name: "Robert Baratheon", house_id: 4)
Character.create(name: "Stannis Baratheon", house_id: 4)
Character.create(name: "Renly Baratheon", house_id: 4)


Character.create(name: "Viserys Targaryen", house_id: 2)
Character.create(name: "Daenerys Targaryen", house_id: 2)
