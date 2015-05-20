class User < ActiveRecord::Base
  has_many :comments
  has_many :reviews
  has_many :votes
  has_many :reviewed_movies, through: :reviews, source: :movie


  has_secure_password
end
