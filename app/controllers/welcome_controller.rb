class WelcomeController < ApplicationController

  def index
    @genres = Genre.all
    @movies = Movie.all
    @reviews = Review.all
  end




end
