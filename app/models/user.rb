class User < ApplicationRecord

  #========== Validations  =====================
  validates :name, :ssn, presence: true,length: { minimum: 10, maximum: 100 },uniqueness: true

  #========== Associations =====================
  has_many :accounts, inverse_of: :user

end
