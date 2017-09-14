# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airport.create(airport_code: 'SFO')
Airport.create(airport_code: 'NYC')
Airport.create(airport_code: 'CAK')
Airport.create(airport_code: 'JFK')
Airport.create(airport_code: 'CLE')
Airport.create(airport_code: 'MYR')

Flight.create(from_airport_id: (rand(5) + 1), to_airport_id: (rand(5) + 1), start: Time.now + rand(2592000), flight_duration: (rand(220) + 30))
Flight.create(from_airport_id: (rand(5) + 1), to_airport_id: (rand(5) + 1), start: Time.now + rand(2592000), flight_duration: (rand(220) + 30))
Flight.create(from_airport_id: (rand(5) + 1), to_airport_id: (rand(5) + 1), start: Time.now + rand(2592000), flight_duration: (rand(220) + 30))
Flight.create(from_airport_id: (rand(5) + 1), to_airport_id: (rand(5) + 1), start: Time.now + rand(2592000), flight_duration: (rand(220) + 30))
Flight.create(from_airport_id: (rand(5) + 1), to_airport_id: (rand(5) + 1), start: Time.now + rand(2592000), flight_duration: (rand(220) + 30))
Flight.create(from_airport_id: (rand(5) + 1), to_airport_id: (rand(5) + 1), start: Time.now + rand(2592000), flight_duration: (rand(220) + 30))
