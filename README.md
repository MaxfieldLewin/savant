##[Savant][app]

Savant aka HipHopSavant is a text annotation platform, inspired by the awesome [Genius][rg] aka RapGenius. It allows users to upload the texts of songs, articles, poems, instruction manuals, or any other kind of textual material and collaboratively annotate them. When you view a text, all you have to do to create a new annotation (presuming you're signed in) is highlight a piece of the text with your mouse, and the new annotation form will pop up. The live site can be viewed here: [http://www.hiphopsavant.com][app].

Savant is a single-page app built on a Ruby on Rails backend and a frontend structured with Backbone.js. It also leverages the following gems, libraries and APIs for particular functionalities:
- [arunagw's omniauth-twitter gem][omniauthtwitter] for one-click signup/signin through Twitter's Oauth Api
- [Thoughtbot's paperclip gem][pc] for user uploaded images and [aws-sdk][aws] to store those images in an Amazon S3 container
- [Twitter's Typeahead.js library][tt] for dynamic typeahead, autocomplete and match highlighting in some search fields
- [Casecommons' PgSearch gem][pgs] for efficient database level multi-table/multi-field full text searches
- [halostatue's diff-lcs gem][dl] for diffing changes to lyrics across edit's, allowing annotations to be correctly re-positioned or deleted
- The JavaScript Web API, particularly [window.getSelection()][wgs] and [document.createTextNode()][dctn], to correctly parse and manipulate the heterogenous mix of plain text and anchor tags (for preexisting annotations) when creating a new annotation

Some interesting code to check out can be found in the following locations:
- [Handling the display and creation of new annotations][showlyrics]
- [Testing the uniqueness constraints of annotations][testlyrics]
- [Using twitter's typeahead library to autocomplete artist names when making a new song][newartist]

[app]: http://www.hiphopsavant.com
[showlyrics]: ./app/assets/javascripts/views/songs/showLyrics.js
[newartist]: ./app/assets/javascripts/views/songs/newSong.js
[testlyrics]: ./spec/models/song_fragment_spec.rb
[rg]: http://www.genius.com
[omniauthtwitter]: https://github.com/arunagw/omniauth-twitter
[pc]: https://github.com/thoughtbot/paperclip
[aws]: https://github.com/aws/aws-sdk-ruby
[tt]: https://github.com/twitter/typeahead.js
[pgs]: https://github.com/Casecommons/pg_search
[dl]: https://github.com/halostatue/diff-lcs
[wgs]: https://developer.mozilla.org/en-US/docs/Web/API/Window/getSelection
[dctn]: https://developer.mozilla.org/en-US/docs/Web/API/Document/createTextNode
