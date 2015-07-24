json.extract! comment, :contents, :user_id, :id
json.username comment.user.username
if comment.image.exists?
  json.image_url, asset_path(comment.image.url(:original))
end
