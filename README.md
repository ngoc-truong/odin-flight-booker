# Toy App: Flight booker

In this app, a user is able to book flights from one airport to another. This project is a toy app to understand complex form building in ruby on rails. It is part of (The Odin Project)[https://www.theodinproject.com/lessons/building-advanced-forms], an online curriculum to learn full stack development. 

## Objective
- A user is able to book a one-way flight
- A user enters an desired date and airport and clicks "search" 
- A user then chooses from among a list of eligible flights
- A user then enters passenger information for all passengers
- A user enters billing information (not in this app)

# Data model

## Airport model
- code:string 
- city:string 
- has_many :departing_flights, class_name: "Flight", foreign_key: "from_airport_id"
- has_many :arriving_flights, class_name: "Flight", foreign_key: "to_airport_id"

## Flight model
- date: datetime
- duration: datetime 
- belongs_to :from_airport, class_name: "Airport"
- belongs_to :to_airport, class_name: "Airport"

