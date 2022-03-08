
require 'date'
User.destroy_all
Appointment.destroy_all
Treatment.destroy_all

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

100.times do |i|
  date = Date.today+rand(100)
  Treatment.create!(
  address: "São Paulo #{i + 10}",
  specialty: specialties.sample,
  price: rand(100..500),
  start_date: date,
  end_date: date + 30,
  user: User.all.sample
)
puts "Tratamento criado #{i + 1}"
end
