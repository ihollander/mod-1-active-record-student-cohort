puts "Clearing old data..."
Cohort.destroy_all
Student.destroy_all

puts "Seeding cohorts..."
5.times do
  date = Faker::Date.forward(years: 1)
  name = "nyc-dumbo-web-#{date.strftime("%m%d%Y")}"
  Cohort.create(
    name: name,
    current_mod: rand(1..5)
  )
end

puts "Seeding students..."
Cohort.each do |cohort|
  rand(10..25).times do
    Student.create(
      cohort: cohort,
      name: Faker::Name.name, 
      age: rand(18..100)
    )
  end
end

puts "Done!"