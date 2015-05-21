class VotesController < ApplicationController

  def new
    @review = Review.find_by(params[:review_id])
    @movie = Movie.find_by(params[:review_id])

  end

  def create
    puts params
    puts logged_in?
    movie = Movie.find_by_id(params[:movie_id])
    @review = Review.find_by_id(params[:review_id])
    vote = @review.votes.create(vote_params)
    vote.update_attributes(user_id: current_user.id)

    redirect_to movie_path(movie)
  end

  def update

  end

  private

  def vote_params
    params.require(:vote).permit(:direction)
  end
end
