class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :body
      t.integer :score
      t.belongs_to :movie, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
