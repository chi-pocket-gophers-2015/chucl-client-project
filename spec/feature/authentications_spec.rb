require 'rails_helper'

feature 'User Authentication Areas' do
  let!(:genre) { Genre.create!(name: 'Comedy') }
  let!(:movie) { genre.movies.create!(title: "The Sound of Music", synopsis: "A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.", runtime: 174) }
  let!(:user) { User.create(name: "Jillo", username: "Jill", password: "password") }
  let!(:review) { user.reviews.create(score: 10, body: "BEST MOVIE EVAAAAAAR!!!!! I LOVE RICK MORANIS", movie: movie, points: 0) }

  # scenario "Goes away from review edit page when not logged in" do
  #   visit movie_review_path(movie, review)
  #   click_link('Edit Review')
  #   expect(page).to have_content("Username")
  # end


end
