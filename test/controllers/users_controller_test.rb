require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = create(:user)
    sign_in @user
  end
  test "should navigate to user profile page" do
    get user_path(@user)

    assert_response :success
  end
end
