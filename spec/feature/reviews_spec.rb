require 'rails_helper'

feature 'Review page' do
  let!(:genre) { Genre.create!(name: 'Comedy') }
  let!(:movie) { genre.movies.create!(title: "The Sound of Music", synopsis: "A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.", runtime: 174) }
  let!(:user) { User.create(name: "Jillo", username: "Jill", password: "password") }
  let!(:review) { user.reviews.create(score: 10, body: "BEST MOVIE EVAAAAAAR!!!!! I LOVE RICK MORANIS", movie: movie, points: 0) }
  let!(:comment){ review.comments}

  scenario 'See a review for a movie' do

  end
end
