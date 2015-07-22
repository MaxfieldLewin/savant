json.extract! genre, :id, :genre_name

if splash
  json.songs genre.song do |song|
    json.partial! 'api/songs/song', song: song, details: false, splash: true
  end
end
