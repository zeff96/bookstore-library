require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = create(:book, isbn: "12345678-9")
    @user = create(:user)
    sign_in @user
  end
  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get show" do
    get book_url(@book)
    assert_response :success
  end

  test "should borrow a book" do
    borrowing_params = attributes_for(:borrowing)
    assert_difference("Borrowing.count") do
      post borrow_book_url(@book), params: { borrowing: borrowing_params }
    end

    assert_redirected_to book_path(@book)
  end

  test "should return a borrowed book" do
    borrowed_book = create(:borrowing, user: @user, book: @book)

    patch return_borrowed_book_book_url(borrowed_book.book)

    borrowed_book.reload
    @book.reload

    assert_not_nil borrowed_book.returned_at
    assert_equal @book.status, "available"

    assert_redirected_to user_path(@user)
  end
end
