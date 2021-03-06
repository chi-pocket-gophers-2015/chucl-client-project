require 'rails_helper'

feature 'Welcome Content' do
  # Given categories
  let!(:genre) { Genre.create!(name: 'Comedy') }
  let!(:movie) { genre.movies.create!(title: "The Sound of Music", synopsis: "A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.", runtime: 174) }
  let!(:user) { User.create(name: "Jillo", username: "Jill", password: "password") }
  let!(:review) { user.reviews.create(score: 10, body: "BEST MOVIE EVAAAAAAR!!!!! I LOVE RICK MORANIS", movie: movie, points: 0) }

  scenario 'see a list of genres' do
    visit root_path
    expect(page).to have_content 'Comedy'
  end

  scenario 'see a list of top movies' do
    visit root_path
    expect(page).to have_content 'The Sound of Music'
  end

   scenario 'see a list of top movies' do
    visit root_path
    expect(page).to have_content 'BEST MOVIE EVAAAAAAR'
  end
end
