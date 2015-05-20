class WelcomeController < ApplicationController

  def index
    @genres = Genre.all
    "#{@genres.first.name}"
    # @reviews = Review.order{order by review.votes}
  end




end
