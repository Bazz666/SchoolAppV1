# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# Assesment.destroy_all
# Course.destroy_all
# Departament.destroy_all
# Message.destroy_all
# Room.destroy_all
# User.destroy.all



30.times do
    User.create!(
        name: Faker::Name.first_name,
        lastName: Faker::Name.last_name,
        email: Faker::Internet.email,
        password: password, 
        password_confirmation: password
    ) 
end

10.times do
    Assesment.create!(
        grade: rand(1..10)
    ) 
end

10.times do
    Room.create!(
        name: Faker::Name.first_name
    ) 
end

10.times do
    Departament.create!(
        name: Faker::Educator.subject 
    ) 
end

10.times do
    Course.create!(
        Faker::Educator.course_name
    ) 
end