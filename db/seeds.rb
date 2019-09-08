
Airport.delete_all

airports = [["HAJ", "Hanover"],
            ["HAM", "Hamburg"],
            ["BRE", "Bremen"],
            ["DUS", "Duesseldorf"], 
            ["NYC", "New York City"],
            ["SFO", "San Francisco"],
            ["BSL", "EuroAirport Basel Mulhouse Freiburg"],
            ["UPS", "Uppsala"]]

airports.each do |airport|
    Airport.create(code: airport[0], city: airport[1])
end

# Flights
Flight.delete_all 

flights = [ [Time.now + 5.days, 300, 1, 2],
            [Time.now + 6.days, 312, 2, 3], 
            [Time.now + 10.days, 511, 3, 6], 
            [Time.now + 15.days, 492, 3, 5],
            [Time.now + 30.days, 312, 7, 8],
            [Time.now + 31.days, 312, 7, 8] ]

flights.each do |flight| 
    Flight.create(  date: flight[0], 
                    duration: flight[1],
                    from_airport_id: flight[2],
                    to_airport_id: flight[3])
end 
