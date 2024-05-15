class RemoveCommentCount < ActiveRecord::Migration[7.0]
  def change
    remove_column :photos, :comment_count
  end
end
