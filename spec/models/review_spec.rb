require 'rails-helper'

describe Review do
  let!(:user) { User.new(name: "Boys", username: "Boys", password: "Boys") }
  let!(:movie) { Movie.new(title: "Jaws", runtime: 90, synopsis: "It's about a shark") }
  let!(:review) { Review.new(body: "It was Okay", score: 5, movie: movie, user: user) }

  it "Is valid when all parts are assigned" do
    expect(review.valid?).to eq(true)
  end


end
