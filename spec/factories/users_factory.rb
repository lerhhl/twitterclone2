FactoryGirl.define do
  factory :user do
    first_name "John"
    last_name "Doe"
    password "123123"
    sequence(:email) { |n| "email#{n}@example.com" }
    sequence(:username) { |n| "user#{n}" }
    description "Hello"
  end
end
