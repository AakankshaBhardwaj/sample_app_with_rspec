require 'rails_helper'
require 'spec_helper'
RSpec.describe Account, 'validation' do
  it {should validate_uniqueness_of(:name)}
  it {should validate_presence_of(:user_id)}
end
RSpec.describe Account, 'association' do
  it {should belong_to(:user)}
end

