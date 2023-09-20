require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    let(:user) do
      User.new(
        username: 'test',
        password: 'password',
        password_confirmation: 'password',
        email: 'test@goatmail.com'
      )
    end

    it 'is valid with valid attributes' do
      expect(user).to be_valid
    end

    it 'is not valid without a password' do
      user.password = nil
      expect(user).not_to be_valid
    end

    it 'is not valid without a password_confirmation' do
      user.password_confirmation = nil
      expect(user).not_to be_valid
    end

    it 'is not valid when password and password_confirmation do not match' do
      user.password_confirmation = 'different_password'
      expect(user).not_to be_valid
    end

    it 'is not valid without an email' do
      user.email = nil
      expect(user).not_to be_valid
    end

    it 'is not valid with a duplicate email (case insensitive)' do
      user.save
      duplicate_user = User.new(
        email: 'test@example.com',
        password: 'another_password',
        password_confirmation: 'another_password',
        first_name: 'Jane',
        last_name: 'Doe'
      )
      expect(duplicate_user).not_to be_valid
    end

  end
end
