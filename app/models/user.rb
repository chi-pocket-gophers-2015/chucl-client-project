class User < ActiveRecord::Base
  has_many :comments
  has_many :reviews
  has_many :votes
  has_many :reviewed_movies, through: :reviews, source: :movie

  validates :name, :username, presence: true

  has_secure_password




def calc_trusted_status
    reviews = self.reload && self.reviews
    # if reviews.count > 0
    # ((reviews.select {|review| review.is_positive?}.count.to_f/self.reviews.count.to_f)*100).to_i
    # else
    #   97
    # end

  end

  def set_aggregate_score
    self.update_attributes(aggregate_score: calc_aggregate_score)
  end



end
