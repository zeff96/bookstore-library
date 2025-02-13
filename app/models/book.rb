class Book < ApplicationRecord
  has_many :borrowings
  has_many :users, through: :borrowings

  validates :author, presence: true
  validates :title, presence: true
  validates :isbn, presence: true, uniqueness: true
  validates :status, presence: true

  enum :status, [ :available, :borrowed ]
end
