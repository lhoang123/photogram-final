class Removecollumn < ActiveRecord::Migration[7.0]
  def change
    def up
      remove_column(:users, :like_counts)
    end
  
    def down
      add_column(:users, :like_counts, :string)
    end
  end
end
