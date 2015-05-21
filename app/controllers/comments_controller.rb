class CommentsController < ApplicationController
  def new
    @post = Comment.find_by_id(params[:comment_id])
    @review = Review.find_by_id(params[:review_id])
    @movie = Movie.find_by_id(params[:movie_id])
    if @post
      @comment = @post.comments.new
    elsif @review
      @comment = @review.comments.new
    elsif @movie
      @comment = @movie.comments.new
    end
  end

  def create
    @post = Comment.find_by_id(params[:comment_id])
    @review = Review.find_by_id(params[:review_id])
    @movie = Movie.find_by_id(params[:movie_id])
    if @post
      @comment = @post.comments.create(comment_params)
    elsif @review
      @comment = @review.comments.create(comment_params)
    elsif @movie
      @comment = @movie.comments.create(comment_params)
    end
    redirect_to
  end

  def edit
  end

  def update
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
