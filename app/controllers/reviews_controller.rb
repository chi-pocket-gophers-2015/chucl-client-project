class ReviewsController < ApplicationController
  def new
    @movie = Movie.find(params[:movie_id])
    @review = Review.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.new(review_params)
    #change line below to "current User"
    @review.user = User.first
    if @review.save
      redirect_to movie_path(@movie)
    else
      "You Failed. Make error handling/validations"
    end
  end

  def edit

  end

  def update

  end

  private
  def review_params
    params.require(:review).permit(:score, :body)
  end
end
