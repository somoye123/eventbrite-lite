require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'Uduak')
  end

  test 'User should be valid' do
    assert @user.valid?
  end

  test 'user name should be present' do
    @user.name = ' '
    assert_not @user.valid?
  end

  test 'user name should be unique' do
    @user.save
    @user2 = User.new(name: 'Uduak')
    assert_not @user2.valid?
  end
end
