Cake Project READ.ME!
This web application is designed to keep track of employee birthdays at the company. It allows users to input an employee's name and date of birth and automatically calculates the date of cake delivery, based on the following rules:

A small cake is provided on the employee’s first working day after their birthday.
All employees get their birthdays off.
The office is closed on weekends.
If the office is closed on an employee’s birthday, they get the next working day off.
If two or more employees share a birthday, we instead provide one large cake to share.
The application consists of a form that allows users to enter employee details. As soon as employee details are added to the form, the application automatically adds the employee's information to a table that lists the employee's name, date of birth, date of cake delivery, and size of cake. The table is sorted in ascending order of cake date.

The application also includes a pie chart that shows the total number of cakes split by size of cake. The table and the pie chart update automatically as employee details are added via the form.

---

Technologies Used
The application uses the following technologies:

Ruby on Rails
PostgreSQL database
HTML
CSS
JavaScript
Chart.js library

Gems (Not all used)

rails: web application framework for Ruby on Rails
sprockets-rails: original asset pipeline for Rails
pg: PostgreSQL database adapter for ActiveRecord
puma: web server
jsbundling-rails: bundle and transpile JavaScript
turbo-rails: Hotwire's SPA-like page accelerator
stimulus-rails: Hotwire's modest JavaScript framework
cssbundling-rails: bundle and process CSS
jbuilder: build JSON APIs with ease
redis: use Redis adapter to run Action Cable in production
tzinfo-data: library for handling time zones
bootsnap: reduces boot times through caching
debug: debugging gem
web-console: use console on exceptions pages
capybara: use system testing
selenium-webdriver: use Selenium driver for Capybara
webdrivers: automatic installation and updates for drivers like Selenium
holidays: work with holidays
chartkick: create beautiful JavaScript charts with minimal code
groupdate: group time series data in ActiveRecord
pagy: pagination library (unused)
faker: generate fake data for testing

---

Setup
To run this application on your local machine, follow these steps:

Clone this repository to your local machine
Install the required dependencies by running bundle install and yarn install
Set up the database by running rails db:create and rails db:migrate
Start the Rails server by running `bin/dev` If you run `rails server`, the charts will not show.
Open a web browser and navigate to http://localhost:3000/

---

Setting Up Dummy Data
To quickly populate the database with some dummy data, you can run the following command:

`rails db:seed`
This will execute the seeds.rb file located in the db directory, which contains code to create 10 random employees with birthdays between 18 and 55 years ago. Additionally, the seeds file also creates four employees with the following birth dates:

Jack Smith - 10-03-1990
Tom Rogers - 10-03-1990
Jemma Hastings - 21-06-1993
Ryan Bagshot - 21-06-1993

Some of these employees share the same birthday, which will result in their cake size being set to "Large" as per the application's requirements.

---

Usage
To use this application, follow these steps:

On the home page, click the "New employee" button to open the form.
Enter the employee's name and date of birth in the form and click the "Add Employee" button to add the employee's information to the table.
The employee's information will be added to the table automatically. The table is sorted in ascending order of cake delivery date.
The pie chart below the table shows the total number of cakes split by size of cake.
To add more employees, repeat steps 1-2.

---

Conclusion
In conclusion, building the birthday cake tracking web application was a challenging but rewarding task. Some of the main issues faced during development included selecting the right pie chart package to work seamlessly with the Rails framework, ensuring the post requests sent the correct data to the database, and writing the logic to accurately determine the cake_dates and cake_sizes based on the employee's date of birth.

Despite these challenges, the project was successful in meeting most of the requirements outlined in the initial brief, including creating a form for entering employee details, generating a table with the employee information, sorting the table in ascending order of cake_date, and displaying a pie chart of the total number of cakes by size.

Overall, building the birthday cake tracking application was an excellent opportunity to showcase the knowledge of frontend frameworks and professional software engineering skills.

---

Further Improvements
There are several possible further improvements that could be made to this application. One possible improvement would be to implement AJAX requests, so that the screen does not have to be refreshed to update the table and chart. This would make the user experience smoother and more seamless. Another possible improvement would be to add pagination and update the data on pagination, so that the table does not become too unwieldy as more employees are added. Another possible feature would be to add search filters to the table, so that users can more easily find specific employees. Another field of favourite cakes could also be added to the form, and if the selected favourite cake matches when employees have the same birthday, the oldest one gets the choice. This would add a fun and personalized touch to the application.
