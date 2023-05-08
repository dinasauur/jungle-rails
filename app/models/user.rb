class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates_confirmation_of :password
  validates :password, presence: true, length: { minimum: 6 }
  validates :authenticate_with_credentials

  def self.authenticate_with_credentials(email, password)
    user = User.find_by(email: email.downcase)

    if user && user.authenticate(password) #authenticate is a built-in method
      user
    else
      nil
    end
  end
end
