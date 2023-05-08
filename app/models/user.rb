class User < ApplicationRecord
  has_secure_password

  validates :first_name, :last_name, :password, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false}
  validates :password_must_equal_password_confirmation
  validates_confirmation_of :password
  validates :password, presence: true, length: { minimum: 6 }
end
