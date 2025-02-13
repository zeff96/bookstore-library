require "test_helper"

class RegistrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = create(:user)
  end

  test "should register user" do
    user_params = attributes_for(:user)
    assert_difference("User.count") do
      post registration_url, params: { user: user_params }
    end
    assert_redirected_to root_url
  end
end
