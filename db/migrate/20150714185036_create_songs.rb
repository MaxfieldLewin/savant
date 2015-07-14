class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :artist_id, null: false
      t.string :title, null: false
      t.text :description
      t.text :contents, null: false
      t.integer :image_id

      t.timestamps null: false
    end

    add_index :songs, :artist_id
    add_index :songs, :title
    add_index :songs, [:title, :artist_id], unique: true
  end
end
