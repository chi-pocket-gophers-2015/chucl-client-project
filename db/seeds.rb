genre  = Genre.create(name: "Comedy")
genre2 = Genre.create(name: "Action")
genre3 = Genre.create(name: "Drama")
genre4 = Genre.create(name: "Romance")

movie  = genre.movies.create(title: "Ghostbusters", synopsis: "Three unemployed parapsychology professors set up shop as a unique ghost removal service.", runtime: 105)
movie2 = genre3.movies.create(title: "There Will Be Blood", synopsis: "A story of family, religion, hatred, oil and madness, focusing on a turn-of-the-century prospector in the early days of the business.", runtime: 158)
movie3 = genre4.movies.create(title: "The Sound of Music", synopsis: "A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.", runtime: 174)
movie4 = genre2.movies.create(title: "Terminator 2: Judgment Day", synopsis: "A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her young son, John Connor, from a more advanced cyborg, made out of liquid metal.", runtime: 137)



user  = User.create(name: "Bobbo", username: "Bob", password: "password")
user2 = User.create(name: "Jillo", username: "Jill", password: "password")

review  = user.reviews.create(score: 10, body: "BEST MOVIE EVAAAAAAR!!!!! I LOVE RICK MORANIS", movie: movie, points: 0)
review2 = user.reviews.create(score: 1, body: "This was so weird. Why all the noises?", movie: movie2, points: 0)
review3 = user.reviews.create(score: 9, body: "Such a classic! I just want to keep on singing!", movie: movie3, points: 0)
review4 = user2.reviews.create(score: 10, body: "PTA is a visionary!!", movie: movie2, points: 0)
review5 = user2.reviews.create(score: 5, body: "I can't understand a thing Arnold is saying!", movie: movie4, points: 0)
review6 = user2.reviews.create(score: 9, body: "What a totally great action flick!", movie: movie4, points: 0)
review7 = user2.reviews.create(score: 7, body: "VIGGO!", movie: movie, points: 0)
review8 = user2.reviews.create(score: 10, body: "The HILLS ARE ALIVE!", movie: movie3, points: 0)
review9 = user2.reviews.create(score: 10, body: "Julie Andrews is the freaking bomb!", movie: movie3, points: 0)


review_comment = review.comments.create(body: "don't cross the streams!", user: user)

movie_comment = movie.comments.create(body: "i love this movie. it's so cool.", user: user)

comment_comment = movie_comment.comments.create(body: "i agree. this movie is so cool. and i'm commeting on my own comment. i agree so much with myself", user: user)

comment_vote = review_comment.votes.create(direction: true, user: user)

review_vote2 = review.votes.create(direction: true, user: user)
review_vote3 = review.votes.create(direction: true, user: user2)
review_vote4 = review2.votes.create(direction: true, user: user)
review_vote5 = review2.votes.create(direction: false, user: user2)
review_vote6 = review3.votes.create(direction: false, user: user)
review_vote7 = review3.votes.create(direction: false, user: user2)
review_vote8 = review4.votes.create(direction: true, user: user)









