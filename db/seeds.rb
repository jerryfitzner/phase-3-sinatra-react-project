

puts "🌱 Seeding data..."

# Seed your database here

8.times do

  #Create a list of students. 
  student = Student.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: rand(12..18)
  )

  #Create 1-10 donors for each student.
  rand(1..5).times do
    Donor.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      donation: rand(10..100),
      donation_received: Faker::Boolean.boolean,
      student_id: student.id
    )
  end
end

puts "✅ Done seeding!"
