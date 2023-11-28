FactoryBot.define do
  factory :category do
    name { Faker::Lorem.word }
    genre { Faker::Lorem.word }
  end
end
