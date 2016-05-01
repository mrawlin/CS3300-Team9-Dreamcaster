FactoryGirl.define do
  factory :user do |f|
    f.name "John"
    f.email "text@example.com"
    f.password "password"
  end
end