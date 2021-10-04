require 'faker'

 Assessment.destroy_all
 Course.destroy_all
 Departament.destroy_all
 Message.destroy_all
 Room.destroy_all
 User.destroy_all


10.times do
    User.create!(
        name: Faker::Name.first_name,
        lastName: Faker::Name.last_name,
        email: Faker::Internet.email,
        password: "password", 
        password_confirmation: "password"
    ) 
end



# 10.times do
#     Room.create!(
#         name: Faker::Name.first_name
#     ) 
# end

# 10.times do
#     Departament.create!(
#         name: Faker::Educator.subject 
#     ) 
# end

# 10.times do
#     Course.create!(
#         name: Faker::Educator.course_name
#     ) 
# end