class Review < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable



  def is_positive?
    self.score >= 6
  end

end
