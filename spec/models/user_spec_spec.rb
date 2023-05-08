require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it "is valid with a name, password, email" do
      user = User.new(
        name: 'Lula Lounge',
        email: 'lula@lounge.com',
        password: '123456',
        password_confirmation: '123456' #even though there is no password_confirmation attribute in model or schema...if you have added validates_confirmation_of :password in your model, then you can test that the validation is working 
      )

      expect(user).to be_valid
    end

    it "is invalid if password and password_confirmation does not match" do
      user = User.new(
        name: 'lula',
        email: 'lula@lounge.come',
        password: 'password', 
        password_confirmation: 'incorrect_password'
      )

      user.valid?
      expect(user.errors[:password_confirmation]).to be_present
    end

    it "is invalid without a name" do
      user = User.new(name: nil)
      user.valid?
      expect(user.errors[:name]).to be_present
    end

    it "is invalid without a password" do
      user = User.new(password: nil)
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end

    it "is invalid without an email" do
      user = User.new(email: nil)
      user.valid?
      expect(user.errors[:email]).to be_present
    end

    it "is valid when provided an email with different casing" do
      user = User.new(email: 'LULA@loUNgE.com')
      user.save # check that the email saved to the database is in lowercase
      expect(user.email.downcase).to eql('lula@lounge.com')
    end

    it "is invalid if password is less than 6 characters" do
      user = User.new(password: '12345')
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 6 characters)")
    end
  end
end
