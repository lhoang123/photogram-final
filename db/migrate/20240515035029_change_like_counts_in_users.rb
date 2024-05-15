class ChangeLikeCountsInUsers < ActiveRecord::Migration[7.0]
  def change
    change_column(:users, :like_counts, :integer)
  end
end
