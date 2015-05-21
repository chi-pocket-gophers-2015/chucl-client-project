class Movie < ActiveRecord::Base
  belongs_to :genre
  has_many :reviews
  has_many :reviewers, through: :reviews, source: :user
  has_many :comments, as: :commentable
  has_many :commenters, through: :comments, source: :user

  def aggregate_score
    ((self.reviews.select {|review| review.is_positive?}.count.to_f/self.reviews.count.to_f)*100).to_i
  end

end
