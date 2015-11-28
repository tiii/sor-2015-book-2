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
    desc: "Ein Buch",
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