json.extract! annotation, :id, :song_fragment_id, :contents
json.image_url asset_path(annotation.image.url(:original))

json.comments annotation.comments do |comment|
  json.partial! 'api/comments/comment', comment: comment
end
