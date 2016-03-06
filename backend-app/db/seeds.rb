# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

classroom1 = Classroom.create(teacher_name:"Jones")
classroom2 = Classroom.create(teacher_name:"Patterson")

10.times do Student.create(email:Faker::Internet.email, password:"pass", classroom: classroom1)
end
Student.create(email:"andrew@gmail.com", password:"pass", classroom:classroom1)

10.times do Student.create(email:Faker::Internet.email, password:"pass", classroom: classroom2)
end
Student.create(email:"ruth@gmail.com", password:"pass", classroom:classroom2)

100.times do Code.create(random_key: Faker::Code.ean, student: nil) end