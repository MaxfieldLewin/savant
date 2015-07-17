json.extract! song, :id, :title, :artist_id
json.artist_name song.artist.name
if details
  json.extract! song, :description, :contents, :image_id

  json.song_fragments song.song_fragments do |fragment|
    json.partial! 'api/song_fragments/song_fragment', song_fragment: fragment, annotation: false
  end

end
