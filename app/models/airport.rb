class Airport < ApplicationRecord
    has_many :flights_arriving, foreign_key: "to_id", class_name: "Flight"
    has_many :flights_departing, foreign_key: "from_id", class_name: "Flight"
end
