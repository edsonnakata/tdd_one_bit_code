FactoryBot.define do
  factory :weapon do
    name { FFaker::Lorem.word }
    power_base { FFaker::Random.rand(1000..10000) }
    power_step { FFaker::Random.rand(100..1000) }
  end
end
