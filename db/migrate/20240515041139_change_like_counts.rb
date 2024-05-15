class ChangeLikeCounts < ActiveRecord::Migration[7.0]
  def change
    def change
      change_column(:users, :likes_count, :integer)
    end
  end
end
