require 'csv'
require 'pp'
require 'faker'

user1 = User.create(name: "Bob", username: "bob", password: "password")
user2 = User.create(name: "Jill", username: "jill", password: "password")
user3 = User.create(name: "Steve", username:"steve", password:"password")
user4 = User.create(name: "Erin", username:"erin", password:"password")
user5 = User.create(name: "Jose", username:"jose", password:"password")
user6 = User.create(name: "Yvette", username:"yvette", password:"password")
user7 = User.create(name: "Ronald", username:"ronald", password:"password")
user8 = User.create(name: "Meredith", username:"meredith", password:"password")

users = User.all.to_a



# ================= Creating Movies & Genres ===================
movies = Hash.new
CSV.foreach("2015-genres.csv", headers: true) do |row|
  movies[row["title"]] ||= row.to_hash
end

movies.each do |_,movie|
  Movie.create(title:movie["title"], synopsis: Faker::Lorem.sentence, runtime: rand(90..210), genre:Genre.find_or_create_by(name:movie["genre"]), year: movie["year"].to_i)
end

genre = Genre.find(24)
genre.update_attributes(name:"Other")

# ===============================================================
movies = Movie.all.sample(15)

200.times do
  users.sample.reviews.create(body: Faker::Lorem.paragraph, score: rand(4..10), movie: movies.sample )
end

300.times do
  movies.sample.comments.create(body: Faker::Lorem.sentence, user: users.sample)
end

reviews = Review.all

500.times do
  reviews.sample.comments.create(body: Faker::Lorem.sentence, user: users.sample)
end

10.times do
comments = Comment.all

  75.times do
    comments.sample.comments.create(body: Faker::Lorem.sentence, user: users.sample)
  end
end
boolean = [true,false]
2000.times do
  reviews.sample.votes.create(direction: boolean.sample, user:users.sample)
end



