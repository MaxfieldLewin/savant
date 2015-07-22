json.results do
  json.array! @search_results do |search_result|
    if search_result.searchable_type == 'Artist'
      json.partial! 'api/artists/artist', artist: search_result, details: false, songs: false
      json.type 'Artist'
    else
      json.partial! 'api/songs/song', song: search_result, details: false, splash: false
      json.type 'Song'
    end
  end
end
