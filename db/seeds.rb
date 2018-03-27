# put info here
require_relative "../config/environment.rb"

#adding data to users
10.times do
User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, weight: Random.rand(80..300))
end
