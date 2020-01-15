FactoryGirl.define do
  factory :frame do
      game {association(:game)}
  end
end
