class UsersController < ApplicationController
  before_action :set_user, only: %i[show]
  def show
    @borrowed_books = @user.books.includes(:borrowings).where(status: :borrowed)
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
end
