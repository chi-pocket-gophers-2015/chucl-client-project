class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :runtime
      t.text :synopsis
      t.belongs_to :genre, index: true

      t.timestamps
    end
  end
end
