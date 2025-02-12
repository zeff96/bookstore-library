# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#

user = User.create!(
  username: "Allan Smith",
  email_address: "allan@example.com",
  bio: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis perferendis doloribus ab aperiam eos placeat consequatur quia culpa repudiandae. Sit ut autem deleniti obcaecati ullam facilis iste nihil, totam nobis fugiat officiis ratione molestiae? Maiores unde vero iure explicabo iusto sint! Dolores obcaecati et perspiciatis optio, libero id doloribus ut!",
  password: "password",
  password_confirmation: "password"
)


avatar_path = Rails.root.join("public", "avatar", "pngwing.com.png")

if File.exist?(avatar_path)
  user.avatar.attach(
    io: File.open(avatar_path),
    filename: "pngwing.com.png",
    content_type: "image/png"
  )
else
  puts "Avatar file not found at #{avatar_path}"
end

12.times do |_|
  Book.create!(
    author: Faker::Book.author,
    title: Faker::Book.title,
    isbn: Faker::Code.isbn
  )
end
