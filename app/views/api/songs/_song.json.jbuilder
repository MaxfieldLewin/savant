json.extract! song, :id, :title, :artist_id
json.extract! song.artist, :name
if details
  json.extract! song, :description, :contents, :image_id
end
