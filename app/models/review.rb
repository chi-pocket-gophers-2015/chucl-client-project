class Review < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable


  validates :movie, :user, :body, :score, presence: true
  validates_numericality_of :score, only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10



  def is_positive?
    self.score >= 6
  end


end
