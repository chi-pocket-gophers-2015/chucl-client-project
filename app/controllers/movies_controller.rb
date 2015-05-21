class MoviesController < ApplicationController
  def show
    @movie = Movie.find_by(id: params[:id])
    @vote = Vote.new
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :runtime, :synopsis, :genre)
  end
end
