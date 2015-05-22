class User < ActiveRecord::Base
  has_many :comments
  has_many :reviews
  has_many :votes
  has_many :reviewed_movies, through: :reviews, source: :movie

  validates :name, :username, presence: true

  has_secure_password




  def calc_trusted_status
    reviews = self.reload && self.reviews
    if reviews.count > 0
    ((reviews.select do |review|
      if review.votes.count > 0
        review.points >=0
      end
    end.count.to_f/self.reviews.count.to_f)*100).to_i >= 60

    else
      false
    end

  end

  def set_trusted_status
    self.update_attributes(trusted: calc_trusted_status)
  end



end



# trusted if you have over 60% of your reviews in the positive points
