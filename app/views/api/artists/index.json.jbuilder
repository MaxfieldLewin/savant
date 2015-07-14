json.array! @artists do |artist|
  json.partial! 'api/artists/artist', artist: artist, details: false, songs: false
end
