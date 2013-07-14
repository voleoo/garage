# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :authentication do
    sequence(:email) { |n| "email-#{n}@gmail.com" }
    password "password_example"
    password_confirmation "password_example"
    sequence(:user_id) { |n| n }
  end

end
