FactoryGirl.define do
  factory :frame do
      game {association(:game)}

      trait :with_balls do
        balls { build_list(:ball, 3) }
      end
  end
end
