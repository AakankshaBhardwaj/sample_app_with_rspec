require 'rails_helper'
require 'spec_helper'

RSpec.describe User, 'validation' do
  it {should ensure_length_of(:name).is_at_least(10)}
  it {should ensure_length_of(:name).is_at_most(100)}
  it {should validate_presence_of(:ssn)}
  it {should validate_uniqueness_of(:name)}
  it {should validate_presence_of(:user_id)}
end
RSpec.describe User, 'association' do
  it {should have_many(:accounts)}
end

