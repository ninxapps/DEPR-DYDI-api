# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

6.times do |i|
	Category.create(name: Faker::Lorem.word, nsfw: Faker::Boolean.boolean(0.2))
end

5.times do |i|
	name = Faker::Name.first_name
	User.create(name: name, email: Faker::Internet.email(name), password: '11111111', password_confirmation: '11111111')
end

50.times do |i|
	Question.create(text: Faker::Lorem.sentence, category_id: Faker::Number.between(1, 6), user_id: Faker::Number.between(1, 6))
end
