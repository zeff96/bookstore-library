require "test_helper"

class UserTest < ActiveSupport::TestCase
  setup do
    @user = create(:user)
  end
  # validations
  test "should not save user without email" do
    @user.email_address = ""
    assert_not @user.save, "Saved without email address"
  end

  test "should not save user without password" do
    user_params = attributes_for(:user).merge(password: "")
    @user = User.new(user_params)
    assert_not @user.save, "Saved the user without a password"
  end

  # associations

  test "should have many borrowings" do
    book = create(:book)
    book1 = create(:book)
    create(:borrowing, user: @user, book: book)
    create(:borrowing, user: @user, book: book1)

    assert_equal @user.borrowings.count, 2
  end

  test "should have many books through borrowing" do
    book = create(:book)
    book1 = create(:book)
    create(:borrowing, user: @user, book: book)
    create(:borrowing, user: @user, book: book1)

    assert_equal @user.books.count, 2
  end
end
