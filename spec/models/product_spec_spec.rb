require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "is valid with a name, price, quantity, and category" do
      japan_region = Category.new(name: 'japan_region')

      product = Product.new(
        name: 'Bonsai',
        price: 20,
        quantity: 5,
        category: japan_region
      )

      expect(product).to be_valid
    end
    
    # validates :name, presence: true
    it "is invalid when name is not present" do
      product = Product.new(name: nil)
      product.valid? # this is called in order to run the validations on Product instance. This will populate the "errors" object with any validation errors that may have occured during the validation process.

      expect(product.errors[:name]).to be_present
    end

    
    # validates :price, presence: true
    it "is invald when price is not present" do
      japan_region = Category.new(name: nil)

      product = Product.new(
        name: 'Bonsai',
        quantity: 5,
        category: japan_region
      )

      product.valid?

      expect(product.errors[:price]).to include ("can't be blank") #another way to test with diff matcher
    end

    # validates :quantity, presence: true
    it "is invald when quantity is not present" do
      product = Product.new(quantity: nil)
      product.valid?

      expect(product.errors[:quantity]).to be_present
    end

    # validates :category, presence: true
    it "is invald when price is not present" do
      product = Product.new(category: nil)

      product.valid?

      expect(product.errors[:category]).to include("can't be blank")
    end
  end
end
