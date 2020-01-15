FactoryGirl.define do
  factory :game do

    trait :with_frames do
      frames { build_list :frame, 3 }
    end

    trait :with_equal_to_10_frames do
      frames { build_list :frame, 10 }
    end

    trait :with_frames_and_balls do
      frames { build_list(:frame, 10, :with_balls) }
    end
  end
end
