class VotesController < ApplicationController

  def new
    @vote = Vote.new
  end

  def create
    current_user.votes.create(votes_params)
  end

  def update

  end

end
