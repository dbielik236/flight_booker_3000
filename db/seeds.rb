# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.create(city: "Manchester", code: "MHT")
Airport.create(city: "Los Angeles", code: "LAX")
Airport.create(city: "St. Louis", code: "STL")

Flight.create(departure_airport_id: 1, arrival_airport_id: 2, date: "2022-6-31", duration: 400)
Flight.create(departure_airport_id: 1, arrival_airport_id: 2, date: "2022-6-31", duration: 360)
Flight.create(departure_airport_id: 1, arrival_airport_id: 2, date: "2022-6-31", duration: 300)