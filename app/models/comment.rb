class Comment < ActiveRecord::Base
  include Voteable

  belongs_to :user
  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable

  validates :body, presence: true

end
