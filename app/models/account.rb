class Account < ApplicationRecord
  belongs_to :user, inverse_of: :accounts
  validates :name, presence: true, uniqueness: true
end
