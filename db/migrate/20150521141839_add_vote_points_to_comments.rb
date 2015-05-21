class AddVotePointsToComments < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.integer :points
    end
  end
end
