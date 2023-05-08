require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it "is valid with a name, password, email" do
      user = User.new(
        name: 'Lula Lounge',
        email: 'lula@lounge.com',
        password: '123456'
      )

      expect(user).to be_valid
    end

    
  end
end
