# Use FactoryGirl in test to create User objects
FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "foo#{n}@bar.com"
    end
    password 'foobar'
    factory :user_with_checklists do
      after(:create) do |user|
        create_checklist(user)
      end
    end
  end
end
