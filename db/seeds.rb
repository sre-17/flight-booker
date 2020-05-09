# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.create(code: "QLN")
Airport.create(code: "TVC")

Flight.create(start_airport_id: 1 , finish_airport_id: 2)
Flight.create(start_airport_id: 2, finish_airport_id: 1)
