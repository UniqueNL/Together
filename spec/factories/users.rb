require 'faker'

FactoryGirl.define do
  factory :user do
    email    { Faker::Internet.email }
    firstname    { Faker::Name.first_name }
    lastname    { Faker::Name.last_name }
    nickname    { Faker::Pokemon.name }
    password { Faker::Internet.password }
  end
end
