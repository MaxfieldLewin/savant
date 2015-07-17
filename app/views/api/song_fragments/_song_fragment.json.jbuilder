json.extract! song_fragment, :id, :offset_start, :offset_end

if annotation
  json.annotation do
    json.partial! 'api/annotations/annotation', annotation: song_fragment.annotation
  end
end
