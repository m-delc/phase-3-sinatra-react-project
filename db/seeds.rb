require 'faker'

puts "🌱 Seeding spices..."

10.times do
    Restaurant.create(
        name: Faker::Restaurant.name,
        description: Faker::Restaurant.description,
        review: Faker::Restaurant.review,
        img: Faker::LoremFlickr.image(size: "200x240", search_terms: ['restaurants'])
    )
end


puts "✅ Done seeding!"
