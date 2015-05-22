class AddDefaultValueToNameOfGenres < ActiveRecord::Migration
  def change
    change_column :genres, :name, :string,  default: "Other"
  end
end
