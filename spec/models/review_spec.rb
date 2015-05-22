require 'rails_helper'

describe Review do
  let!(:user) { User.new(name: "Boys", username: "Boys", password: "Boys") }
  let!(:movie) { Movie.new(title: "Jaws", runtime: 90, synopsis: "It's about a shark") }
  let!(:review) { Review.new(body: "It was Okay", score: 5, movie: movie, user: user) }

  it "Is valid when all parts are assigned" do
    expect(review.valid?).to eq(true)
  end

  it "Is invalid when missing a body" do
    review.body = nil
    expect(review.valid?).to eq(false)
  end

  it "Is invalid when score is less than 0" do
    review.score = -1
    expect(review.valid?).to eq(false)
  end

  it "Is invalid when score is greater than 10" do
    review.score = 11
    expect(review.valid?).to eq(false)
  end

  # describe "#set_movie_aggregate_score" do
  #   it "updates the aggregate score of the movie of the review" do

  #     expect{review.save!}.to change {movie.aggregate_score}
  #   end
  # end

end
