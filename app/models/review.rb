class Review < ActiveRecord::Base
  include Voteable

  belongs_to :movie
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable

  after_save :set_movie_aggregate_score

  validates :movie, :user, :body, :score, presence: true
  validates_numericality_of :score, only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10

  def is_positive?
    self.score >= 6
  end


  def set_movie_aggregate_score
    self.movie.set_aggregate_score
  end


end
