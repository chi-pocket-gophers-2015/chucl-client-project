class WelcomeController < ApplicationController

  def index
    @genres = Genre.all.order(name: :asc)
    @top_movies = Movie.order(aggregate_score: :desc).limit(5)
    @top_reviews = Review.order(points: :desc).limit(5)
  end

end


