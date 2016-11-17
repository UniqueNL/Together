require 'faker'

FactoryGirl.define do
  factory :chat_room do
    title    { Faker::Pokemon.name }
    description    { Faker::Lorem.characters(40) }
  end
end
