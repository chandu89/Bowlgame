FactoryGirl.define do
  factory :ball do
    pins Faker::Number.within(range: 1..10)
    frame {association(:frame)}

    trait :with_invalid_attributes do
      pins Faker::Number.negative
    end
  end

end
