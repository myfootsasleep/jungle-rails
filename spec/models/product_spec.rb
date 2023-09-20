require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    let(:category) { Category.create(name: 'Example Category') }

    describe 'Product with all four fields set' do
      it 'should save successfully' do
        product = Product.new(
          name: 'Example Product',
          description: 'This is a test product',
          price: 19.99,
          quantity: 10,
          category: category
        )
        expect(product).to be_valid
      end
    end

    describe 'Name validation' do
      it 'is not valid without a name' do
        product = Product.new(
          description: 'This is a test product',
          price: 19.99,
          quantity: 10,
          category: category
        )
        expect(product).not_to be_valid
        expect(product.errors[:name]).to include("can't be blank")
      end
    end

    describe 'Price validation' do
      it 'is not valid without a price' do
        product = Product.new(
          name: 'Example Product',
          description: 'This is a test product',
          quantity: 10,
          category: category
        )
        expect(product).not_to be_valid
        expect(product.errors[:price]).to include("can't be blank")
      end
    end
    describe 'Quantity validation' do
      it 'is not valid without a quantity' do
        product = Product.new(
          name: 'Example Product',
          description: 'This is a test product',
          price: 19.99,
          category: category
        )
        expect(product).not_to be_valid
        expect(product.errors[:quantity]).to include("can't be blank")
      end
    end
    describe 'Category validation' do
      it 'is not valid without a category' do
        product = Product.new(
          name: 'Example Product',
          description: 'This is a test product',
          quantity: 10,
          price: 19.99
        )
        expect(product).not_to be_valid
        expect(product.errors[:category]).to include("can't be blank")
      end
    end
  end
end
