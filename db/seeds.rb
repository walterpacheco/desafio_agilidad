# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
User.destroy_all

2.times do |i|
    User.create({
        name: "usuario n#{i+4}",
        email: "usuario#{i+4}@hll.cl",
        password: "123456",
        password_confirmation: "123456"

    })
end

User.all.each do |user|
    4.times do |i|
     Product.create({
         name: " Producto#{i+4}, del usuario #{user.name}",
         user_id: user.id,
         description: "lo que sea #{i+4}",
         price: 1000*i
         })
    end
end