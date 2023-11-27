FactoryBot.define do
  factory :post do
    title { Faker::Internet.title }
    content { Faker::Internet.content }
    user
    category
  end
end
