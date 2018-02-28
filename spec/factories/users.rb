FactoryGirl.define do
  factory :user do
    name "user_#{SecureRandom.uuid}"
    s3 = Aws::S3::Client.new(stub_responses: true)
    s3.list_buckets.buckets.map(&:name)
    storage s3
    ssn "#{SecureRandom.uuid.last(4)}"
  end
end
