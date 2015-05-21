genre = Genre.create(name: "Comedy")

movie  = genre.movies.create(title: "Ghostbusters", synopsis: "Three unemployed parapsychology professors set up shop as a unique ghost removal service.", runtime: 105)
movie2 = genre.movies.create(title: "There Will Be Blood", synopsis: "A story of family, religion, hatred, oil and madness, focusing on a turn-of-the-century prospector in the early days of the business.", runtime: 158)
movie3 = genre.movies.create(title: "The Sound of Music", synopsis: "A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.", runtime: 174)


user  = User.create(name: "Bobbo", username: "Bob", password: "password")
user2 = User.create(name: "Jillo", username: "Jill", password: "password")

review  = user.reviews.create(score: 10, body: "BEST MOVIE EVAAAAAAR!!!!! I LOVE RICK MORANIS", movie: movie)
review2 = user.reviews.create(score: 1, body: "This was so weird. Why all the noises?", movie: movie2)
review3 = user.reviews.create(score: 9, body: "Such a classic! I just want to keep on singing!", movie: movie3)
review4 = user2.reviews.create(score: 2, body: "Such a classic! I just want to keep on singing!", movie: movie3)


review_comment = review.comments.create(body: "don't cross the streams!", user: user)

movie_comment = movie.comments.create(body: "i love this movie. it's so cool.", user: user)

comment_comment = movie_comment.comments.create(body: "i agree. this movie is so cool. and i'm commeting on my own comment. i agree so much with myself", user: user)

comment_vote = review_comment.votes.create(direction: true, user: user)
review_vote = review.votes.create(direction: true, user: user)
