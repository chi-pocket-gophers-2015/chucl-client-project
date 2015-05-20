class Movie < ActiveRecord::Base
  belongs_to :genre
  has_many :reviews
  has_many :reviewers, through: :reviews, source: :user
  has_many :comments, as: :commentable
  has_many :commenters, through: :comments, source: :user

end
