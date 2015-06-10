FactoryGirl.define do
  factory :cast_member do
    name { Faker::Name.name }
  end
end
