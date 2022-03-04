# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'
require 'faker'


first_names = %w(maria jose joao paulo laura herman michelle andreia paulao pedro)
last_names = %w(silva santos pieroni passalacqua loosli amaro teste1 teste2 teste3 teste4)
specialties = %w(cardiologia endocrionologia ortopedia neurologia psicologia ginecologia pediatria)


first_names.each_with_index do |name, i|
  User.create!(
    email: "#{name}@gmail.com",
    password: "123123",
    first_name: name,
    last_name: last_names[i]
  )
end


# 10.times do |i|
#   User.create!(
#     email: "teste#{i + 1}@gmail.com"
#     encrypted_password: "pass#{rand(1000000..300000000)}"
#     first_name: first_names.sample
#     last_name: last_names.sample
#   )
# end

7.times do |i|
  Treatment.create!(
  address: "address #{i + 10}",
  specialty: specialties.sample,
  price: rand(100..500),
  availability: Date.today+rand(100),
  user_id: rand(1..10)
)
end
