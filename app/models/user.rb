class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :borrowings
  has_many :books, through: :borrowings

  has_one_attached :avatar

  validates :email_address, presence: true, uniqueness: true
  validates :password, presence: true, on: :create
  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
