##[Savant][app]

Savant aka HipHopSavant is a clone of the awesome app [Genius][rg] aka RapGenius, a text annotation platform. It allows users to upload the texts of songs, articles, poems, instruction manuals, or any other kind of textual material and collaboratively annotate them. When you view a text, all you have to do to create a new annotation (presuming you're signed in) is highlight a piece of the text with your mouse, and the new annotation form will pop up. So far I've implemented the basic functionality, though I have a long way to go particularly in the area of tracking collaborations - Genius shows what percentage of a given annotation each user contributed. I do apologize for not having better seed data so far, though I do have one real song seeded with some annotations, it can be reached by navigating to '/#songs/36'. I also apologize for not getting a chance to implement a guest user acct yet, but please sign in with username "max", pw "maxmax", or just make a new acct, or sign in with twitter!

Some interesting code to check out can be found in the following locations:
- [Handling the display and creation of new annotations] [showlyrics]
- [Testing the uniqueness constraints of annotations] [testlyrics]
- [Using twitter's typeahead library to autocomplete artist names when making a new song] [newartist]

[app]: http://www.hiphopsavant.com
[showlyrics]: ./app/assets/javascripts/views/songs/showLyrics.js
[newartist]: ./app/assets/javascripts/views/songs/newSong.js
[testlyrics]: ./spec/models/song_fragment_spec.rb
[rg]: http://www.genius.com
