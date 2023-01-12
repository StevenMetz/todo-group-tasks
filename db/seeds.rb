# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Employee Seeds
Employee.create!(first_name: "Joe", last_name: "Doe", email: "joe@example.com", password: "password", password_confirmation: "password", manager: true)
Employee.create!(first_name: "Steve", last_name: "Doe", email: "steve@example.com", password: "password", password_confirmation: "password")
Employee.create!(first_name: "Josh", last_name: "Doe", email: "josh@example.com", password: "password", password_confirmation: "password")
Employee.create!(first_name: "Jack", last_name: "Doe", email: "jack@example.com", password: "password", password_confirmation: "password")
#  Task Seeds
Todo.create!(name: "build walls", description: "Build the wall then put the gable on it", employee_id: rand(Employee.ids.min..Employee.ids.max))
Todo.create!(name: "build Gables", description: "put osb on the gables with the racks", employee_id: rand(Employee.ids.min..Employee.ids.max))
Todo.create!(name: "Install the stairs", description: "Check your heights make sure the rise and run are code", employee_id: rand(Employee.ids.min..Employee.ids.max))
Todo.create!(name: "Build Garage Door ", description: "Make sure you burn 6 inches and make it 1 inch bigger than door", employee_id: rand(Employee.ids.min..Employee.ids.max))
Todo.create!(name: "build walls", description: "Build the wall then put the gable on it", employee_id: rand(Employee.ids.min..Employee.ids.max))
# Jobsite Seeds
Jobsite.create!(employee_id: rand(Employee.ids.min..Employee.ids.max), location: "123 Main Street", builder: "Tim O'brien")
Jobsite.create!(employee_id: rand(Employee.ids.min..Employee.ids.max), location: "1234 Main Street", builder: "Tim O'brien")
Jobsite.create!(employee_id: rand(Employee.ids.min..Employee.ids.max), location: "1235 Main Street", builder: "Tim O'brien")
Jobsite.create!(employee_id: rand(Employee.ids.min..Employee.ids.max), location: "1236 Main Street", builder: "Tim O'brien")
# Punchin Seeds
Punchin.create!(employee_id: rand(Employee.ids.min..Employee.ids.max), time_in: "10:45 am", time_out: "5:50 pm", date: Date.today.to_s)
Punchin.create!(employee_id: rand(Employee.ids.min..Employee.ids.max), time_in: "10:45 am", time_out: "5:50 pm", date: Date.today.to_s)
Punchin.create!(employee_id: rand(Employee.ids.min..Employee.ids.max), time_in: "10:45 am", time_out: "5:50 pm", date: Date.today.to_s)
Punchin.create!(employee_id: rand(Employee.ids.min..Employee.ids.max), time_in: "10:45 am", time_out: "5:50 pm", date: Date.today.to_s)

#Jobsite Seed
EmployeeJobsite.create!(employee_id: rand(Employee.ids.min..Employee.ids.max), jobsite_id: rand(Jobsite.ids.min..Jobsite.ids.max))
EmployeeJobsite.create!(employee_id: rand(Employee.ids.min..Employee.ids.max), jobsite_id: rand(Jobsite.ids.min..Jobsite.ids.max))
EmployeeJobsite.create!(employee_id: rand(Employee.ids.min..Employee.ids.max), jobsite_id: rand(Jobsite.ids.min..Jobsite.ids.max))
EmployeeJobsite.create!(employee_id: rand(Employee.ids.min..Employee.ids.max), jobsite_id: rand(Jobsite.ids.min..Jobsite.ids.max))
