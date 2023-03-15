# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# Create 10 employees
10.times do
  # Generate a random date of birth between 18 and 55 years ago
  date_of_birth = Faker::Date.between(from: 55.years.ago, to: 18.years.ago)

  # Create a new employee with a random name and the generated date of birth
  Employee.create!(
    name: Faker::Name.name,
    date_of_birth: date_of_birth
  )
end