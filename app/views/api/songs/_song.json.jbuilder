json.extract! song, :id, :title, :artist_id

if details
  json.extract! song, :description, :contents, :image_id
end
