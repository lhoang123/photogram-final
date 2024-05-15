class RemoveUnwantedColumnFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :like_counts, :string
  end
end
