# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.where(email: 'test@test.com').first_or_initialize
user.update!(
  password: 'password',
  password_confirmation: 'password'
)

# post = Post.create(title:"One Piece", body: Faker::JapaneseMedia::OnePiece.unique.quote)

# post = Post.create(title:"Star Wars", body: Faker::Movies::StarWars.unique.quote)

# post = Post.create(title:"Harry Potter", body: Faker::Movies::HarryPotter.unique.quote)

post = Post.create(title:"Game of Thrones", body: Faker::TvShows::GameOfThrones.unique.quote)

