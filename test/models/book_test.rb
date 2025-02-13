require "test_helper"

class BookTest < ActiveSupport::TestCase
  # validations
  test "should not save book without title" do
    book = build(:book, title: "")
    assert_not book.save, "Saved a book without title"
  end

  test "should not save without author" do
    book = build(:book, author: "")
    assert_not book.save, "Saved a book without author"
  end

  test "should not save a book without isbn" do
    book = build(:book, isbn: "")
    assert_not book.save, "Saved a book withou isbn"
  end

  test "should not save a book with duplicate isbn" do
    create(:book, isbn: "123456-7")
    book2 = build(:book, isbn: "123456-7")
    assert_not book2.save, "Saved a book with duplicate isbn"
  end

  test "should save a valid book" do
    book = build(:book)
    assert book.save
  end

  test "should have a book with valid status" do
    book = build(:book, status: :available)
    assert book.save, "Couldn't save the book with valid status"

    book.status = :borrowed
    assert book.save, "Couldn't update the book status to borrowed"
  end

  test "should not save book without status" do
    book = build(:book, status: nil)
    assert_not book.save, "Saved a book without a status"
  end

  # associations
  test "should have many borrowings over time" do
    book = create(:book)
    user = create(:user)
    create(:borrowing, user: user, book: book, returned_at: Date.today)
    create(:borrowing, user: user, book: book)

    assert_equal 2, book.borrowings.count
  end

  test "should have many users through borrowings" do
    book = create(:book)
    user1 = create(:user)
    user2 = create(:user)
    create(:borrowing, user: user1, book: book, returned_at: Date.today)
    create(:borrowing, user: user2, book: book)

    assert_includes book.users, user1
    assert_includes book.users, user2
  end
end
