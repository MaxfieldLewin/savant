# Savant

[Heroku link][heroku]

[heroku]:

## Minimum Viable Product
Savant is a Genius clone built on Rails and Backbone. Users can:

- [ ] Create accounts
- [ ] Create sessions (log in)
- [ ] Add texts (song lyrics, news articles, poems, any item of public record)
- [ ] Annotate texts line-by-line
- [ ] Comment on texts, annotations, and artists
- [ ] View texts with their annotations and comments as a cohesive, single-page experience
- [ ] Tag songs and artists
- [ ] Search for songs by title, artist, contents and tags

## Design Docs
* [View Wireframes][views]
* [DB schema][schema]

[views]: ./docs/views.md
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: User Authentication, Blog Creation (~1 day)
I will implement user authentication in Rails based on the practices learned at
App Academy. By the end of this phase, users will be able to create blogs using
a simple text form in a Rails view. The most important part of this phase will
be pushing the app to Heroku and ensuring that everything works before moving on
to phase 2.

[Details][phase-one]

### Phase 2: Adding, Editing and Viewing Artists and Songs (~2 days)
I'll implement the API routes for serving Song and Artist data. I'll implement the top level Backbone models and composite views, particularly enabling in-place editing of Artist data, and non-lyric Song data (lyrics can't be in-place because annotation events need to target the same elements, so lyric editing will be a modal).

[Details][phase-two]

### Phase 3: Adding, Editing and Viewing Song Annotations (~4 days)
The main feature, I'll implement the API for serving Annotation data. This will also involve writing parsing logic to separate the raw song lyrics into song-fragments, though this will be invisible on the front-end - basically, when a user highlights an as yet unannotated portion of a song lyric, a new song-fragment pointing to that portion o the raw lyric will be instantiated, which the annotation will point to. Once the annotation is made, the song view will show the annotated fragment as highlighted, and an annotation view will appear adjacent to the song lyric on click of the fragment. If the annotation author is viewing, they will also be able to edit this annotation in-place.

[Details][phase-three]

### Phase 4:

[Details][phase-four]

### Phase 5:

[Details][phase-five]

### Bonus Features (TBD)
- [ ]

[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md
