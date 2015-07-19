json.array! @songs do |song|
  json.partial! 'api/songs/song', song: song, details: false, splash: true
end
