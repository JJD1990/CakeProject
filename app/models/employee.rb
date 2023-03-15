class Employee < ApplicationRecord
    validates :name, presence: true
    validates :date_of_birth, presence: true

    attribute :cake_details, :jsonb

require 'date'

def calculate_cake_date
    # Find other employees with the same birthday
    employees_with_same_birthday = Employee.where(date_of_birth: date_of_birth).to_a

    # Calculate the employee's next birthday
    next_birthday = date_of_birth.change(year: Date.today.year)
    next_birthday += 1.year if next_birthday < Date.today

    # Calculate the date of the cake
    cake_date = next_birthday
    cake_date += 1.day until cake_date.on_weekday?

    # If the office is closed on the employee's birthday, move the cake date to the next working day
    if cake_date == date_of_birth || (!cake_date.on_weekday? && !cake_date.on_weekend?)
      cake_date += 1.day until cake_date.on_weekday?
    end

    # Check if the cake date falls on a public holiday
    while Holidays.on(cake_date, :gb).any?
      cake_date += 1.day
    end

    # If multiple employees share a birthday, provide one large cake to share
    if employees_with_same_birthday.length > 1
      return { date: cake_date, size: 'Large' }
    end

    # Provide a small cake on the employee's first working day after their birthday
    cake_date += 1.day while cake_date == date_of_birth || cake_date.on_weekend? || Holidays.on(cake_date, :gb).any?
    { date: cake_date, size: 'Small' }
  end

  before_save do
    self.cake_details = calculate_cake_date
  end

  def self.update_cake_sizes_for_same_birthdays(employee)
    employees_with_same_birthday = Employee.where(date_of_birth: employee.date_of_birth).to_a
    if employees_with_same_birthday.size > 1
      employees_with_same_birthday.each do |e|
        e.update(cake_details: { date: e.cake_details["date"], size: "Large" })
      end
    end
  end
  
end
