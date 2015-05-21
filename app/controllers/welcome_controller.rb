class WelcomeController < ApplicationController

  def index
    @genres = Genre.all
    @top_movies = Movie.all
    @reviews = Review.all
  end



end
