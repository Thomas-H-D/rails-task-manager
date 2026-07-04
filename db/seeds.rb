# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

10.times do
  puts "creating a task"
  Task.create(
    title: "#{Faker::Verb.base.capitalize} #{Faker::House.furniture.downcase}",
    details: Faker::Lorem.sentence(word_count: 8),
    completed: Faker::Boolean.boolean(true_ratio: 0.3) # 30% chance of being completed
  )
  puts "Task created!"
end

puts "Successfully seeded 10 mock to-do items!"
