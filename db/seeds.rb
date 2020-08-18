puts "Clearing old data..."
Cohort.destroy_all
Student.destroy_all

# This will create 5 cohorts using a random date
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
# For each cohort, we'll create some students
Cohort.each do |cohort|
  # this will run a loop a random number of times between 10 and 25
  rand(10..25).times do
    # generate a fake name
    name = Faker::Name.name
    # generate a fake age
    age = rand(18..100)

    # **************************************************
    # * TODO: Create new students using Active Record! *
    # * Remember, a student belongs to a cohort        *
    # **************************************************
    # Create Students Here

  end
end

puts "Done!"