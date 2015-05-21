class CommentsController < ApplicationController
  def new
    @comment = Comment.new
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
