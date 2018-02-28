FactoryGirl.define do
  factory :user do
    name "user_#{SecureRandom.uuid}"
    ssn "#{SecureRandom.uuid.last(4)}"
  end
end
