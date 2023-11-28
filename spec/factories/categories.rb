FactoryBot.define do
  factory :category do
    name { Faker::Internet.name }
    genre { Faker::Internet.genre }
  end
end
