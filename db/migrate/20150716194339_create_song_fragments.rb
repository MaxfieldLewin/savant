class CreateSongFragments < ActiveRecord::Migration
  def change
    create_table :song_fragments do |t|
      t.integer :song_id, null: false
      t.integer :offset_start, null: false
      t.integer :offset_end, null: false
      t.timestamps null: false
    end

    add_index :song_fragments, :song_id
  end
end
