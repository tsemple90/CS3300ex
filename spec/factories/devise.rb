FactoryBot.define do
  factory :user do
      id {|n|}
      email { Faker::Internet.email }
      password{"qwerty"}
  end
end