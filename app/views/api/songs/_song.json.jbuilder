json.extract! song, :id, :title, :artist_id

if details
  json.extract! song, :description, :contents
  json.artist_name song.artist.name
  json.image_url asset_path(song.image.url(:original))

  json.song_fragments song.song_fragments do |fragment|
    json.partial! 'api/song_fragments/song_fragment', song_fragment: fragment, annotation: false
  end

  json.comments song.comments do |comment|
    json.partial! 'api/comments/comment', comment: comment
  end
end

if splash
  json.artist_name song.artist.name
  json.image_url asset_path(song.image.url(:original))
end
