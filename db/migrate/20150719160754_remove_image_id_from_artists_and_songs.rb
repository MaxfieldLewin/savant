class RemoveImageIdFromArtistsAndSongs < ActiveRecord::Migration
  def change
    change_table :artists do |t|
      t.remove :image_id
    end

    change_table :songs do |t|
      t.remove :image_id
    end
  end
end
