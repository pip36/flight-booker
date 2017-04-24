# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


airports = Airport.create([{name: "Gatwick"},
  {name: "Heathrow"},
  {name: "London City"},
  {name: "Liverpool"},
  {name: "Birmingham"},
  {name: "Glasgow"},
  {name: "Manchester"}])


airports.each do |airport|

   (1..8).each do |i|
      Flight.create(from_airport_id: airport.id, to_airport_id: i, date: "2017-04-24",
                  time: "00:00:00", flight_duration: rand(1.0..4.0))
      Flight.create(from_airport_id: airport.id, to_airport_id: i, date: "2017-04-25",
                    time: "00:00:00", flight_duration: rand(1.0..4.0))
      Flight.create(from_airport_id: airport.id, to_airport_id: i, date: "2017-04-25",
                  time: "00:00:00", flight_duration: rand(1.0..4.0))
                  Flight.create(from_airport_id: airport.id, to_airport_id: i, date: "2017-04-24",
                              time: "00:01:00", flight_duration: rand(1.0..4.0))
                  Flight.create(from_airport_id: airport.id, to_airport_id: i, date: "2017-04-25",
                                time: "00:01:00", flight_duration: rand(1.0..4.0))
                  Flight.create(from_airport_id: airport.id, to_airport_id: i, date: "2017-04-25",
                              time: "00:01:00", flight_duration: rand(1.0..4.0))
   end

end
