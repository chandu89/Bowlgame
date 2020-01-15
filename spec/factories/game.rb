FactoryGirl.define do
  factory :game do

    trait :with_frames do
      frames { build_list :frame, 3 }
    end
  end
end
