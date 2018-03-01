class Account < ApplicationRecord

  #========== Validations  =====================
  validates :name, presence: true, uniqueness: true

  #========== Associations =====================
  belongs_to :user, inverse_of: :accounts
end
