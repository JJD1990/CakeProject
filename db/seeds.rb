require 'faker'

# Create 10 employees with random birthdays
10.times do
  # Generate a random date of birth between 18 and 55 years ago
  date_of_birth = Faker::Date.between(from: 55.years.ago, to: 18.years.ago)

  # Create a new employee with a random name and the generated date of birth
  Employee.create!(
    name: Faker::Name.name,
    date_of_birth: date_of_birth
  )
end

# Create 4 employees with specific birthdays
[
  { name: 'Jack Smith', date_of_birth: '1990-03-10' },
  { name: 'Tom Rogers', date_of_birth: '1990-03-10' },
  { name: 'Jemma Hastings', date_of_birth: '1993-06-21' },
  { name: 'Ryan Bagshot', date_of_birth: '1993-06-21' }
].each do |employee_params|
  Employee.create!(employee_params)
end
