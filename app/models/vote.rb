class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :voteable, polymorphic: true

  after_save :set_votable_points

  def set_votable_points
    self.voteable.set_points
  end

end
