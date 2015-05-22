class Genre < ActiveRecord::Base
  has_many :movies
  has_many :reviews, through: :movies
end
