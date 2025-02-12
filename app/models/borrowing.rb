class Borrowing < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :user_id, :book_id, :borrowed_at, :due_date, presence: true
  validates :book, uniqueness: { scope: :returned_at, message: "is already borrowed" }
end
