module Voteable
  extend ActiveSupport::Concern


  def calc_points
    self.votes.where(direction: true).count - self.votes.where(direction: false).count
  end

  def set_points
    if self.votes.count == nil
      self.update_attributes(points: 0)
    else
      self.update_attributes(points: calc_points)
    end
  end
end
