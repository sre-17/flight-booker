class Flight < ApplicationRecord
    belongs_to :from_airport , class_name: "Airport" , inverse_of: :departing_flights , foreign_key: "start_airport_id"
    belongs_to :to_airport , class_name: "Airport" , inverse_of: :arriving_flights , foreign_key: "finish_airport_id"
    has_many :bookings
end
