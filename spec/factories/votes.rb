include RandomData

FactoryGirl.define do
  factory :comment do
    value 1
    post
    user
  end
end
