# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Project.destroy_all
Person.destroy_all
text = 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.'

10.times do 
  User.create(name: Faker::Name.name, email: Faker::Internet.email, password: '123456')
end 
5.times do
  Project.create(name:Faker::Company.bs,description: text)
end 

10.times do
  Person.create(name: Faker::Name.name)
  
end