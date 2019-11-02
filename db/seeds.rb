# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create name: "Admin", email: "admin@admin.com", password: "123456789", password_confirmation: "123456789", admin: true, phone: "+56123456789"
puts "admin@admin.com ha sido creado"

User.create name: "user", email: "user@user.com", password: "123456789", password_confirmation: "123456789", admin: false, phone: "+56123456789"
puts "user@user.com ha sido creado"

Event.create name: "Noche de Techno", category: "Techno", description: "Techno Toda la Noche", price: 12000, user_id: 1

Event.create name: "Noche de Salsa", category: "Salsa", description: "Salsa Toda la Noche", price: 15000, user_id: 1

Event.create name: "Noche de Electronica", category: "Electronica", description: "Electronica Toda la Noche", price: 13000, user_id: 1
puts "Eventos Creados"
