FactoryBot.define do
  factory :student do
      id {|n|}
      email { Faker::Internet.email }
      password{"qwerty"}
  end
end