8.times do
  house = House.create(name: Faker::Movies::HarryPotter.unique.house,
                       points: rand(10..90))

  num_of_students = rand(10..20)
  num_of_teachers = rand(4..8)

  num_of_students.times do
    house.students.create(name: Faker::Movies::HarryPotter.unique.character)
  end

  num_of_teachers.times do
    house.teachers.create(name: Faker::Movies::HarryPotter.unique.character)
  end

end

puts "Number of houses: #{House.count}"
puts "Number of students: #{Student.count}"
puts "Number of teachers: #{Teacher.count}"