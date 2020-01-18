Airport.delete_all
Flight.delete_all

Airport.create!(
    id: 1,
    city: "Hong Kong",
    code: "HK"
    )

Airport.create!(
    id: 2,
    city: "Cape Town",
    code: "CPT"
)

Airport.create!(
    id: 3,
    city: "Shenzhen",
    code: "SZ"
)

Airport.create!(
    id: 4,
    city: "Moscow",
    code: "SVO"
)

Airport.create!(
    id: 5,
    city: "London",
    code: "LHR"
)

100.times do |n|
    to_random = 0
    from_random = 0

    until to_random != from_random
        to_random = rand(1..5)
        from_random = rand(1..5)
    end

    depart_at = rand((DateTime.now - 1.week)..DateTime.now)
    flight_duration = Faker::Number.within(range: 1..15)

    Flight.create!(to_id: to_random, from_id: from_random, depart_at: depart_at, 
                    flight_duration: flight_duration)

end
