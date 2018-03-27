require 'faker'

first = Faker::Name.first_name
last = Faker::Name.last_name
weight = Faker::Measurement.metric_weight

puts weight
