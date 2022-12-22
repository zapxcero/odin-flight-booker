# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# create multiple airport records
Airport.delete_all
airport_codes = %w[SFO BOS LAX JFK ATL]
airport_codes.each do |code|
  Airport.create(code: code)
end

# Delete any existing flights from the database
Flight.delete_all

# Create an array of flights
flights = [
  { date: Time.now, duration: 3600, departure_airport: Airport.all.sample, arrival_airport: Airport.all.sample },
  { date: Time.now + 1.day, duration: 7200, departure_airport: Airport.all.sample, arrival_airport: Airport.all.sample },
  { date: Time.now + 2.days, duration: 5400, departure_airport: Airport.all.sample, arrival_airport: Airport.all.sample },
  { date: Time.now + 3.days, duration: 7200, departure_airport: Airport.all.sample, arrival_airport: Airport.all.sample },
  { date: Time.now + 4.days, duration: 5400, departure_airport: Airport.all.sample, arrival_airport: Airport.all.sample },
  { date: Time.now + 5.days, duration: 3600, departure_airport: Airport.all.sample, arrival_airport: Airport.all.sample },
  { date: Time.now + 6.days, duration: 7200, departure_airport: Airport.all.sample, arrival_airport: Airport.all.sample },
  { date: Time.now + 7.days, duration: 5400, departure_airport: Airport.all.sample, arrival_airport: Airport.all.sample },
  { date: Time.now + 8.days, duration: 7200, departure_airport: Airport.all.sample, arrival_airport: Airport.all.sample },
  { date: Time.now + 9.days, duration: 5400, departure_airport: Airport.all.sample, arrival_airport: Airport.all.sample }
]

# Iterate over the flights array and create a new Flight instance for each element
flights.each do |flight|
  Flight.create(flight)
end