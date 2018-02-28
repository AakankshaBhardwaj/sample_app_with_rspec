FactoryGirl.define do
  factory :account do
    name "Account_#{SecureRandom.uuid.first(3)}"
    user_id 1
  end
end