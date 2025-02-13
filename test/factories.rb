FactoryBot.define do
  # User factory
  factory :user do
    username { Faker::Name.name }
    email_address { Faker::Internet.email }
    bio { Faker::Lorem.paragraphs }
    password { Faker::Internet.password(min_length: 7) }
    password_confirmation { password }
  end

  # Book factory
  factory :book do
    title { Faker::Book.title }
    author { Faker::Book.author }
    isbn { Faker::Code.isbn }
  end

  # Borrowing factory
  factory :borrowing do
    borrowed_at { Date.today }
    due_date { Faker::Date.forward(days: 14) }
    returned_at { nil }
    association :user
    association :book
  end
end
