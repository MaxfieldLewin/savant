json.extract! artist, :id, :name

if details
  json.extract! artist, :description
  json.image_url asset_path(artist.image.url(:original))

  json.comments artist.comments do |comment|
    json.partial! 'api/comments/comment', comment: comment
  end
end

if songs
  json.songs artist.songs do |song|
    json.partial! 'api/songs/song', song: song, details: false, splash: false
  end
end
