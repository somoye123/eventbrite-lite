require 'test_helper'

class CreateUsersControllerTest < ActionDispatch::IntegrationTest

    test 'get new user form and create user' do
        get new_user_path
        assert_template 'users/new'
    end

end