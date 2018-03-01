require 'rails_helper'
require 'spec_helper'
require 'aws-sdk-mock'

RSpec.describe User, 'validation' do
  it {should ensure_length_of(:name).is_at_least(10)}
  it {should ensure_length_of(:name).is_at_most(100)}
  it {should validate_presence_of(:ssn)}
  it {should validate_uniqueness_of(:name)}
  it "should require a valid storage" do
    #============ Using Stubs =====================
    s3 = Aws::S3::Client.new(stub_responses: true)
    s3.list_buckets.buckets.map(&:name)
    user = User.create(storage: s3, name: SecureRandom.uuid.last(9), ssn: SecureRandom.uuid)
    user.valid?
  end
end
RSpec.describe User, 'association' do
  it {should have_many(:accounts)}
end
