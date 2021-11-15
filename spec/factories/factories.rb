require 'factory_bot'

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "test-#{n.to_s.rjust(3, '0')}@2.com" }
    password { '123456' }
  end
end