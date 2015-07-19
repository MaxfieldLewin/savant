class AddAttachmentToUsersArtistsSongsAnnotations < ActiveRecord::Migration
  def up
    add_attachment :users, :image
    add_attachment :artists, :image
    add_attachment :songs, :image
    add_attachment :annotations, :image
  end

  def down
    remove_attachment :users, :image
    remove_attachment :artists, :image
    remove_attachment :songs, :image
    remove_attachment :annotations, :image
  end
end
