# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
courses = []
2.times do |i|
    courses << Course.create({
        title: Faker::GreekPhilosophers.name
    })
end


assignments = []
courses.each do |c|
    20.times do |i|
        assignments << Assignment.create({
            title: Faker::Hacker.noun,
            content: Faker::GreekPhilosophers.quote,
            course_id: c.id
        })
    end
end

students = []
courses.each do |c|
    30.times do |i|
        students << Student.create({
            name: Faker::Name.name,
            course_id: c.id
        })
    end
end

assignments.each do |a|
    students.each do |s|
        Grade.create ({
            letter: ['A','B','C','D','F'].sample,
            score: Faker::Number.between(from: 0, to: 100),
            assignment_id: a.id,
            student_id: s.id

        })

    end
end

##t.string :letter
    #  t.float :score
     # t.integer :assignment_id
      #t.integer :student_id





##courses
## t.text :content
## t.string :title
## t.integer :course_id

