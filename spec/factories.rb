FactoryGirl.define do
  factory :user do
    email "john@doe.de"
    name  "John Doe"
    password '12345678'
    password_confirmation { password }
  end

  factory :book do
    title { Faker::Commerce.product_name }
    desc { Faker::Lorem.paragraph }
    price { Faker::Commerce.price }
    author { Faker::Name.name }
    genre { Faker::Commerce.product_name }
    isbn { Faker::Code.isbn }
  end
end