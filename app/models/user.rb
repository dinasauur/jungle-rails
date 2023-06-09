class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates_confirmation_of :password
  validates :password, presence: true, length: { minimum: 6 }

  def self.authenticate_with_credentials(email, password)
    user = User.find_by(email: email.strip.downcase) #strip is used to remove any leading or trailing whitespace characters that might have accidentally been added when the user entered their email address. 

    if user && user.authenticate(password) #authenticate is a built-in method
      user
    else
      nil
    end
  end
end
