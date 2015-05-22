require 'rails_helper'

feature 'Genre Page' do
  let!(:genre) { Genre.create!(name: 'Comedy') }
  let!(:movie) { genre.movies.create!(title: "The Sound of Music", synopsis: "A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.", runtime: 174) }
  let!(:user) { User.create(name: "Jillo", username: "Jill", password: "password") }
  let!(:review) { user.reviews.create(score: 10, body: "BEST MOVIE EVAAAAAAR!!!!! I LOVE RICK MORANIS", movie: movie, points: 0) }

  scenario 'See a movie in that genre on the page' do
    visit genre_path(genre)
    expect(page).to have_content 'The Sound of Music'
  end

  scenario 'see a review of that movie' do
    visit genre_path(genre)
    expect(page).to have_content 'BEST MOVIE EVAAAAAAR'
  end

  scenario "Link for movie will go to the correct page" do
    visit genre_path(genre)
    within('.genre-movies') do
      click_link('The Sound of Music')
    end
    expect(page).to have_content('Runtime: 174')
  end

  # scenario "Link for review will go to the review" do
  #   is_author(user.id)
  #   visit genre_path(genre)
  #   within('.genre-reviews') do
  #     click_link('BEST MOVIE EVAAAAAAR!!!!! I LOVE RICK MORANIS')
  #   end
  #   expect(page).to have_content('Edit Review')
  # end
end
