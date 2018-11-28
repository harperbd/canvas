# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
roles = ['teacher', 'students', 'ta']

10.times do |i|
  course = Course.create(name: "course_#{i}")

  10.times do |j|
    user = User.create(first_name: "first_#{i}_#{j}", last_name: "last_#{i}_#{j}")
    Enrollment.create(role: roles.sample, course_id: course.id, user_id: user.id)
  end
end