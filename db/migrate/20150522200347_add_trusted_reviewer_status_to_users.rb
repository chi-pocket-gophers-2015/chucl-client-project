class AddTrustedReviewerStatusToUsers < ActiveRecord::Migration
  def change
    add_column :users, :trusted, :boolean
  end
end
