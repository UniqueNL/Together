require 'faker'

FactoryGirl.define do
  factory :message do
    body         { Faker::Pokemon.name }
  end
end
