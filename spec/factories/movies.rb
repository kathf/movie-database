FactoryGirl.define do
  factory :movie do
    title { Faker::Company.catch_phrase }
    year { rand(1994..2015) }
    length { rand(60..180) }
    poster { Faker::Avatar.image }
    director
  end
end
