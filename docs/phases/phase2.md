# Phase 2: Viewing and Editing Artists and Songs

## Rails
### Models


### Controllers
* Api::SongsController (create, destroy, index, show, update)
* Api::ArtistsController (create, destroy, index, show, update)

### Views
* songs/_song.json.jbuilder
* songs/show.json.jbuilder
* songs/index.json.jbuilder
* artists/_artist.json.jbuilder
* artists/show.json.jbuilder
* artists/index.json.jbuilder

## Backbone
### Models
* Song
* Artist (parses nested `songs` association)

### Collections
* Songs
* Artists

### Views
* ArtistForm
* ArtistsIndex
* ArtistShow (composite view contains ArtistSongsIndex subview )
* SongForm
* SongIndex
* SongShow(composite view)

## Gems/Libraries
