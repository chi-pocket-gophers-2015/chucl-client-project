class ReviewsController < ApplicationController
  def new
    @movie = Movie.find(params[:movie_id])
    @review = Review.new
  end

  def create

  end

  def edit

  end

  def update

  end
end
