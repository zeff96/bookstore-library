require "test_helper"

class BorrowingTest < ActiveSupport::TestCase
  # validations
  setup do
    @borrowing = create(:borrowing)
  end

  test "should not save without user_id" do
    @borrowing.user = nil
    assert_not @borrowing.save, "Saved borrowing without user id"
  end

  test "should not save without book id" do
    @borrowing.book = nil
    assert_not @borrowing.save, "Saved without book id"
  end

  test "should not save without borrowed at" do
    @borrowing.borrowed_at = nil
    assert_not @borrowing.save, "Saved without borrowed at"
  end

  test "should not save without due date" do
    @borrowing.due_date = nil
    assert_not @borrowing.save, "Saved without due date"
  end

  test "should save valid borrowing" do
    assert @borrowing.save
  end

  # associations

  test "should belong to user and book" do
    book = create(:book)
    user = create(:user)
    borrowing = create(:borrowing, user: user, book: book)

    assert_equal borrowing.user,  user
    assert_equal borrowing.book, book
  end
end
