class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport", foreign_key: "departure_airport_id", inverse_of: :departing_flights
  belongs_to :arrival_airport, class_name: "Airport", foreign_key: "arrival_airport_id", inverse_of: :arriving_flights
  has_many :bookings

  def self.formatted_start
    start.strftime("%m/%d/%Y")
  end
end
