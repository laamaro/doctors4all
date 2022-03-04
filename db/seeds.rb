require 'date'
require 'faker'


first_names = %w(maria jose joao paulo laura herman michelle andreia paulao pedro)
last_names = %w(silva santos pieroni passalacqua loosli amaro teste1 teste2 teste3 teste4)
specialties = %w(cardiologia endocrionologia ortopedia neurologia psicologia ginecologia pediatria)


first_names.each_with_index do |name, i|
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    first_name: name,
    last_name: last_names[i]
  )
end

100.times do |i|
  Treatment.create!(
  address: "São Paulo #{i + 10}",
  specialty: specialties.sample,
  price: rand(100..500),
  availability: Date.today+rand(100),
  user_id: rand(1..10)
)
end
