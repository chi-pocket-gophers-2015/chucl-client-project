require 'rails_helper'

describe ReviewsController do
  let!(:genre) { Genre.create(name: "Drama")}
  let!(:user) { User.create(name: "Boys", username: "Boys", password: "Boys") }
  let!(:movie) { Movie.create(title: "Jaws", runtime: 90, synopsis: "It's about a shark", genre: genre) }
  let!(:review){ Review.create(body: "soooooo coool! i love it!", score: 9, movie: movie, user: user)}
  let!(:new_review){{body: "another review!", score: 9}}


  describe "GET#show" do
    it "assigns the requested review as @review" do
      get :show, {id: review.to_param, movie_id: movie.to_param}
        expect(assigns(:review)).to eq(review)
    end
  end

  # describe "GET #new" do
  #   it "creates a new review object" do
  #     get :new, {movie_id: movie.to_param}
  #     expect(assigns(:review)).to be_a(Review)
  #   end
  # end

  # describe "POST #create" do

  #   it "creates a new review" do
  #     current_user = user
  #     post :create, {movie_id: movie.to_param, review: new_review}
  #       puts assigns(:review).inspect
  #     expect(assigns(:review).save).to eq(true)
  #   end
  # end

end

