class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.text :caption
      t.integer :comment_count
      t.string :image
      t.integer :likes_count
      t.integer :owner_id

      t.timestamps
    end
  end
end
