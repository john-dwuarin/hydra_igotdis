# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username
    email
    password "foobar1234"
    password_confirmation "foobar1234"
  end
end
