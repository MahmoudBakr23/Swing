FactoryBot.define do
  factory :category do
    name { Faker::Internet.name }
    branch { Faker::Internet.branch }
  end
end
