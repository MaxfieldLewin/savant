# Phase 3: Adding, Editing and Viewing Song Annotations

## Rails
### Models
* SongFragment
* Annotation

### Controllers
* SongFragmentsController (create, destroy, index)
* AnnotationsController (create, destroy, show, update, index)

### Views
* song_fragments/index.json.jbuilder
* annotations/index.json.jbuilder
* annotations/show.json.jbuilder
* annotations/_annotation.json.jbuilder

## Backbone
### Models
* Annotation
* SongFragment

### Collections
* Annotation
* SongFragments

### Views
* (These will be subviews of SongShow)
* SongFragmentShow (these will be superimposed on the song lyrics)
* AnnotationShow (this will be instantiated inside SongFragmentShow)
* SongFragmentCreate (this will be instantiated when un-annotated lyrics are highlighted)
* AnnotationForm (this will be instantiated inside of SongFragmentCreate, or swapped with AnnotationShow)


## Gems/Libraries
