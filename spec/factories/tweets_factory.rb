FactoryGirl.define do
  factory :tweet do
    association :user, factory: :user
    body "Testtweet"

    trait :invalid do
      body nil
    end
  end 
end
