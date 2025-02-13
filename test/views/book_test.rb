require "views/view_test_helper"

class BookViewTest < ViewTestCase
  # test for book partial
  test "renders a link to itself" do
    book = create(:book, isbn: "1234567-8")
    render "books/book", book: book

    assert_link book.title, href: book_path(book)
  end

  test "should render book author" do
    book = create(:book, isbn: "45639766-9")
    render "books/book", book: book

    assert_selector "span", text: book.author
  end
end
