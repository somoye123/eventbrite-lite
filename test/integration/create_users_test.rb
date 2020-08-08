require 'test_helper'

class CreateUsersControllerTest < ActionDispatch::IntegrationTest
  test 'get new user form and create user' do
    get new_user_path
    assert_template 'users/new'
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name: 'Somoye' } }
      follow_redirect!
    end
    assert_template 'users/show'
    assert_match 'Somoye', response.body
  end
end
