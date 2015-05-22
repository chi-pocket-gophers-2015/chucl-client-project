class ReviewsController < ApplicationController

  before_action :authenticate_user, only: [:new, :create, :edit, :update, :destroy, :delete]

  def show
    @review = Review.find(params[:id])
    # puts @review
    # puts params[:id]
    puts "helllo?????????????"
  end

  def new
    @movie = Movie.find(params[:movie_id])
    @review = Review.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.new(review_params)
    #change line below to "current User"
    @review.user = current_user
    if @review.save
      redirect_to movie_path(@movie)
    else
      render 'new'
    end
  end

  def edit
    @review = Review.find(params[:id])
    @movie = @review.movie
  end

  def update
    @review = Review.find(params[:id])
    @movie = @review.movie
    if @review.update(review_params)
      redirect_to movie_path(@review.movie)
    else
      render 'edit'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @movie = @review.movie
    @review.destroy
    redirect_to movie_path(@movie)
  end

  private
  def review_params
    params.require(:review).permit(:score, :body)
  end
end
