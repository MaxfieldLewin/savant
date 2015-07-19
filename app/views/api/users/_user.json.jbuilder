json.extract! user, :username, :email, :id, :login_status
json.image_url asset_path(user.image.url(:original))
