class AddDefaultValueForAggregateScoreOfMovies < ActiveRecord::Migration
  def change
    change_column :movies, :aggregate_score, :integer,  default: 0
  end
end
