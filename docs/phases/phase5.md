# Phase 5: Commenting, Tagging, Liking, Following

## Rails
### Models
* Comment
* Tag
* Tagging
* Like
* Following

### Controllers
* Api::CommentsController (create, destroy, update, show, index)
* Api::TaggingsController (create, destroy, show, index)
* Api::LikesController
* Api::FollowingsController
* (Add associations for all of these to relevant models and queries)

### Views
* comments/_comment.json.jbuilder
* taggings/_tagging.json.jbuilder
* (Add optional calls to these in relevant associated views)

## Backbone
### Models
* Comment
* Tag

### Collections
* Comments
* Tags

### Views
* CommentForm (subview of various other Show views)
* CommentIndex (subview of same)

## Gems/Libraries
