class WelcomeController < ApplicationController

  def index
    @genres = Genre.all
    # @reviews = Review.order{order by review.votes}
  end




end
