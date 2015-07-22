json.array! @search_results do |search_result|
  if search_result.searchable_type == 'Artist'
    json.partial! 'api/artists/artist', artist: search_result.searchable, details: false, songs: false
    json._type "Artist"
  else
    json.partial! 'api/songs/song', song: search_result.searchable, details: false, splash: false
    json._type "Song"
  end
end
