class BooksController < ApplicationController
  before_action :set_book, only: %i[show borrow return_borrowed_book]
  def index
    @books = Book.all
  end

  def show; end

  def borrow
    if @book.available?
      @borrowing = @book.borrowings.new(borrowed_at: Date.today, due_date: 2.weeks.from_now)
      @borrowing.user = Current.user

      if @borrowing.save
        @book.update(status: :borrowed)
        redirect_to @book, notice: "Book successfully borrowed!"
      else
        redirect_to @book, alert: "There was an issue with borrowing the book. Please try again."
      end
    else
      redirect_to @book, alert: "This book is currently unavailable."
    end
  end

  def return_borrowed_book
    @borrowed_book = Current.user.borrowings.find_by(book: @book, returned_at: nil)

    if @borrowed_book
      @borrowed_book.update(returned_at: Date.today)
      @book.update(status: :available)
      redirect_to user_path(Current.user), notice: "Book successfully returned!"
    else
      redirect_to user_path(Current.user), alert: "You have not borrowed this book."
    end
  end

  private
  def set_book
    @book = Book.find(params[:id])
  end
end
