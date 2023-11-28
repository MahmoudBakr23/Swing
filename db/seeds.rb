# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
require 'faker'
require 'factory_bot_rails'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

include FactoryBot::Syntax::Methods
FactoryBot.definition_file_paths = [File.expand_path('../spec/factories', __dir__)]

puts "Before seeding: #{User.count} users"
0...10.times do |i|
  create(:user, id: i + 1)
end
puts "After seeding: #{User.count} users"
puts "................................"
puts "Before seeding: #{Category.count} categories"
0...15.times do |i|
  create(:category, id: i + 1)
end
puts "After seeding: #{Category.count} categories"
puts "................................"
puts "Before seeding: #{Post.count} posts"
20.times do
  Post.create(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraph,
    user_id: rand(1..10),
    category_id: rand(1..15)
  )
end
puts "After seeding: #{Post.count} posts"
