class AddVotePointsToReviews < ActiveRecord::Migration
  def change
    change_table :reviews do |t|
      t.integer :points
    end
  end
end
