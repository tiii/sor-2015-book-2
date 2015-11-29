# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Rails.env.development?
  Book.where({
    title: "Lord of the Rings",
    desc: "Ein Buch",
    price: 14.95,
    author: "J.R.R. Tolkien",
    genre: "Fantasy",
    isbn: 31246666
  }).first_or_create

  Book.where({
    title: "The Hobbit",
    desc: "Ein weiteres Buch",
    price: 9.95,
    author: "J.R.R. Tolkien",
    genre: "Fantasy",
    isbn: 31246321
  }).first_or_create

  Book.where({
    title: "Continuous Integration",
    desc: "For any software developer who has spent days in “integration hell, 
    cobbling together myriad software components,Continuous Integration: 
    Improving Software Quality and Reducing Riskillustrates how to transform 
    integration from a necessary evil into an everyday part of the development 
    process. The key, as the authors show, is to integrate regularly and often 
    using continuous integration (CI) practices and techniques.
    
    The authors first examine the concept of CI and its practices from the 
    ground up and then move on to explore other effective processes performed by 
    CI systems, such as database integration, testing, inspection, deployment, and 
    feedback. Through more than forty CI-related practices using application 
    examples in different languages, readers learn that CI leads to more rapid 
    software development, produces deployable software at every step in the 
    development lifecycle, and reduces the time between defect introduction 
    and detection, saving time and lowering costs. With successful implementation 
    of CI, developers reduce risks and repetitive manual processes, and teams 
    receive better project visibility.",
    price: 30.50,
    author: "Martin Fowler",
    genre: "Computer Science",
    isbn: 3124633
  }).first_or_create

  User.where({
    email: "haus@meister.de",
    name: "Eduard Meister",
  }).first_or_initialize.update({
    password: "12345678",
    password_confirmation: "12345678"
  })



end