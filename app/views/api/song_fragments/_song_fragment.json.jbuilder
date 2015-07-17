json.extract! song_fragment, :id, :offset_start, :offset_end

if annotation
  json.annotation song_fragment.annotation do |annotation|
    json.partial! 'api/annotations/annotation', annotation: annotation
  end
end
