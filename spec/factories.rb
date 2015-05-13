FactoryGirl.define do
  factory :contact do
    first_name               { Faker::Name.first_name }
    last_name                { Faker::Name.last_name  }
    street_1                 { Faker::Address.street_address }
    street_2                 { Faker::Address.secondary_address }
    city                     { Faker::Address.city }
    subnational_jurisdiction { Faker::Address.state }
    postal_code              { Faker::Address.postcode }
    country                  { Faker::Address.country }
  end
end
