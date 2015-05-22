class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :voteable, polymorphic: true

  after_create :set_votable_points
  after_save :set_votable_points

  def set_votable_points
    self.voteable.set_points
  end


  def update_users_rev

  end

end
