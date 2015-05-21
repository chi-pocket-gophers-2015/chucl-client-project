class AddAggregateScoreColumnToMovies < ActiveRecord::Migration
  def change
    change_table :movies do |t|
      t.integer :aggregate_score
    end
  end
end
