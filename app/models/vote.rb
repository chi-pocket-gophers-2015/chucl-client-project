class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :voteable, polymorphic: true

  after_create :set_votable_points
  after_save :set_votable_points, :update_users_trusted_status



  def set_votable_points
    self.voteable.set_points
  end


  def update_users_trusted_status
    self.voteable.user.set_trusted_status
  end

end
