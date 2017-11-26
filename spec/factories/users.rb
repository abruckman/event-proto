FactoryGirl.define do
  factory :user do
    first_name {Faker::Name.first_name}
    last_name {Faker::Name.last_name}
    gender {"m"}
    interested_f {true}
    interested_m {false}
  end
end
