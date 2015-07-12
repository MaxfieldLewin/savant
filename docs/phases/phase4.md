# Phase 4: Moderators and Contributions

## Rails
### Models
* Contribution
* Moderator (subclass of user?)

### Controllers
* Api::ContributionsController

### Views
* contributions/show.json.jbuilder

## Backbone
### Models
* Contribution
* Moderator

### Collections
* Contributions

### Views
* ModeratorAnnotationShow (an alternative subview, instantiated instead of normal AnnotationShow when the current user is a moderator, allowing them to edit and approve an Annotation)
* ContributionsShow (instantiated inside SongShow and AnnotationShow)

## Gems/Libraries
* diff-LCS or diffy
