json.extract! annotation, :id, :song_fragment_id, :contents
if annotation.image.exists?
  json.image_url asset_path(annotation.image.url(:original))
end

json.comments annotation.comments do |comment|
  json.partial! 'api/comments/comment', comment: comment
end
