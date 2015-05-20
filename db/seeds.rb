genre = Genre.create(name: "Comedy")

movie = genre.movies.create(title: "Ghostbusters", synopsis: "Three unemployed parapsychology professors set up shop as a unique ghost removal service.", runtime: 105)

user = User.create(name: "Bobbo", username: "Bob", password: "password")

review = user.reviews.create(score: 10, body: "BEST MOVIE EVAAAAAAR!!!!! I LOVE RICK MORANIS", movie: movie)

review_comment = review.comments.create(body: "don't cross the streams!", user: user)

movie_comment = movie.comments.create(body: "i love this movie. it's so cool.", user: user)

comment_comment = movie_comment.comments.create(body: "i agree. this movie is so cool. and i'm commeting on my own comment. i agree so much with myself", user: user)

comment_vote = review_comment.votes.create(direction: true, user: user)
review_vote = review.votes.create(direction: true, user: user)


