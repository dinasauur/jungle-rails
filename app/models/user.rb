class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false}
  validates_confirmation_of :password
  validates :password, presence: true, length: { minimum: 6 }
end
