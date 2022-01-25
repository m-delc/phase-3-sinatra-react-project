require 'faker'

puts "🌱 Seeding spices..."

reso1 = Reservation.create(
    name: Faker::Name.name, 
    phone_number: Faker::PhoneNumber.phone_number,
    time: "7:00"
)

reso2 = Reservation.create(
    name: Faker::Name.name,
    phone_number: Faker::PhoneNumber.phone_number,
    time: "8:00"
)

# Reservation.create(
#     name:
#     phone:
#     time:
#     restaurant_id:
# )

rest1 = Restaurant.create(
    name: Faker::Restaurant.name,
    description: Faker::Restaurant.description,
    review: Faker::Restaurant.review,
    reservation_id: reso1.id
)

rest2 = Restaurant.create(
    name: Faker::Restaurant.name,
    description: Faker::Restaurant.description,
    review: Faker::Restaurant.review,
    reservation_id: reso2.id
)

# Restaurant.create(
#     name: Faker::Restaurant.name,
#     description: Faker::Restaurant.description,
#     review: Faker::Restaurant.review
#     reservation_id: 
# )

# 15.times do
#     Restaurant.create(
#         name: Faker::Restaurant.name,
#         # type: Faker::Restaurant.type,
#         description: Faker::Restaurant.description,
#         review: Faker::Restaurant.review
#         reservation_id: 
#         )
# end

puts "✅ Done seeding!"
