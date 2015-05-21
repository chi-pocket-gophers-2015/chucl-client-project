class Movie < ActiveRecord::Base
  belongs_to :genre
  has_many :reviews
  has_many :reviewers, through: :reviews, source: :user
  has_many :comments, as: :commentable
  has_many :commenters, through: :comments, source: :user

  validates :title, :runtime, :synopsis, :genre, presence: true


  def calc_aggregate_score
    ((self.reviews.select {|review| review.is_positive?}.count.to_f/self.reviews.count.to_f)*100).to_i
  end

  def set_aggregate_score
    self.update_attributes(aggregate_score: calc_aggregate_score)
  end


end
