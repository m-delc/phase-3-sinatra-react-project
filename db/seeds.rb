require 'faker'

puts "🌱 Seeding spices..."

10.times do
    Restaurant.create(
        name: Faker::Restaurant.name,
        description: Faker::Restaurant.description,
        review: Faker::Restaurant.review
    )
end


puts "✅ Done seeding!"
