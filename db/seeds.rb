# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.destroy_all
Farm.destroy_all
Product.destroy_all
Purchase.destroy_all

100.times do
    Customer.create(name: Faker::Name.name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.cell_phone)
end

5.times do
    Farm.create(name: Faker::Company.name, address: Faker::Address.full_address, bio: Faker::Company.bs, farmer_name: Faker::Name.name)
end

100.times do
    Product.create(name: Faker::Food.fruits, price: rand(0..10), farm_id: Farm.all.sample.id)
end

25.times do
    Purchase.create(product_id: Product.all.sample.id, customer_id: Customer.all.sample.id)
end