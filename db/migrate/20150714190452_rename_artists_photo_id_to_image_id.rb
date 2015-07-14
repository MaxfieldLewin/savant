class RenameArtistsPhotoIdToImageId < ActiveRecord::Migration
  def change
    change_table :artists do |t|
      t.rename :photo_id, :image_id
    end
  end
end
