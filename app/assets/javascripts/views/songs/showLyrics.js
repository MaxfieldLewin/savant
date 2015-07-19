Savant.Views.ShowLyrics = Backbone.CompositeView.extend({
  template: JST['songs/showLyrics'],
  tagName: "section class='group'",
  lyricsSelector: ".formatted-lyrics",
  detailsSelector: ".details-container",

  events: {
    "click a":"displayAnnotation",
    "clickAway":"displayDescription",
    "cancelNewAnnotation":"displayDescription",
    "mouseup":"maybeAnnotate"
  },

  initialize: function(){
    this.listenTo(this.model, "sync change", this.render);
  },

  render: function(){
    this.$el.html(this.template({ song: this.model }));
    this.installFragments();
    this.displayDescription();
    return this;
  },

  installFragments: function(){
    var lyrics = $(".formatted-lyrics").text();
    var workingLyrics = lyrics.slice(0, lyrics.length);
    var workingOffset = 0;
    this.model.songFragments().forEach( function (fragment) {
      var fragmentRawText = lyrics.substring(fragment.get("offset_start"), fragment.get("offset_end") + 1)
      var fragmentLink = fragmentRawText.link('/#songFragments/' + fragment.id);
      workingLyrics = workingLyrics.replace(fragmentRawText, function (match, offset, string) {
        //need to ensure repeated lyrics don't get replaced by the same fragment
        if (offset === fragment.get("offset_start") + workingOffset){
          workingOffset += (fragmentLink.length - fragmentRawText.length);
          return fragmentLink;
        } else {
          return fragmentRawText;
        }
      })
    })
    $(".formatted-lyrics").html(workingLyrics);

  },

  displayDescription: function(){
    var descriptionView = new Savant.Views.ShowSongDescription({ model: this.model });
    this.swapDetailsView(descriptionView);
  },

  displayAnnotation: function(event){
    event.preventDefault();
    var fragmentId = $(event.currentTarget).attr("href").slice(16);
    //todo: find a better waty to do this (16 is len of '/#songFragments/')
    var fragment = this.model.songFragments().get(fragmentId);
    var lyricView = this;
    fragment.fetch({
      success: function(){
        var annotationView = new Savant.Views.ShowAnnotation({ model: fragment.annotation() });
        lyricView.swapDetailsView(annotationView);
      }
    })
    //todo: loading display
  },

  displayNewAnnotation: function(fragment){
    var newAnnotationView = new Savant.Views.NewAnnotation({ collection: this.model.songFragments(), fragment: fragment });
    this.swapDetailsView(newAnnotationView);
    this.listenToOnce(this.model.songFragments(), "add", this.render);
  },

  maybeAnnotate: function(event){
    if($(event.target)[0].className === "formatted-lyrics"){
      var selection = window.getSelection();
      // console.log(selection);
      var selected = window.getSelection().toString()
      var lyrics = $(".formatted-lyrics").text();
      var offsetStart = lyrics.indexOf(selected)
      if( offsetStart !== lyrics.lastIndexOf(selected)) {
        //handle the repetition case
      }

      var maybeFragment = new Savant.Models.SongFragment()
      maybeFragment.save({
        song_id: this.model.id,
        offset_start: offsetStart,
        offset_end: offsetStart + selected.length
      },
      {
        success: function(){
          this.displayNewAnnotation(maybeFragment);
        }.bind(this),
      });

    }
  },

  swapDetailsView: function(view){
    if(this._detailsView){
      this.removeSubview(this.detailsSelector, this._detailsView);
      $(this.detailsSelector).empty();
    }

    this.addSubview(this.detailsSelector, view);
    this._detailsView = view;
  }

})
