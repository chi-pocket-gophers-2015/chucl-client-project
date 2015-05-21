class WelcomeController < ApplicationController

  def index
    @genres = Genre.all
    @reviews = Review.all
    @movies = Movie.all
  end




end
