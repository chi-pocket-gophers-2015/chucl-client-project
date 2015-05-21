class CommentsController < ApplicationController
  def new
    @comment = Comment.find_by_id(params[:comment_id])
    @movie = Movie.find_by_id(params[:movie_id])
    @review = Review.find_by_id(params[:review_id])


  end

  def create
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
