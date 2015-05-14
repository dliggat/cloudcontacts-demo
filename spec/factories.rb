FactoryGirl.define do
  factory :contact do
    first_name               { Faker::Name.first_name }
    last_name                { Faker::Name.last_name  }
    street_1                 { Faker::Address.street_address }
    street_2                 { [true, false].sample ? nil : Faker::Address.secondary_address }
    city                     { Faker::Address.city }
    subnational_jurisdiction { Faker::Address.state }
    postal_code              { Faker::Address.postcode }
    country                  { Faker::Address.country }

    factory :contact_with_associations do
      transient do
        email_count 2
        phone_count 3
      end

      after(:create) do |contact, evaluator|
        create_list(:email, evaluator.email_count, contact: contact)
        create_list(:phone, evaluator.phone_count, contact: contact)
      end
    end
  end

  factory :email do
    address { Faker::Internet.email }
    label   { %w[ home work junk ].sample }
  end

  factory :phone do
    number  { Faker::PhoneNumber.phone_number }
    label   { %w[ home work mobile ].sample }
  end
end
