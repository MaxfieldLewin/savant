Savant.Views.ShowLyrics = Backbone.CompositeView.extend({
  template: JST['songs/showLyrics'],
  tagName: "section class='group'",
  lyricsSelector: ".formatted-lyrics",
  detailsSelector: ".details-container",

  events: {
    "click a":"displayAnnotation",
    "clickAway":"displayDescription",
    "cancelNewAnnotation":"render",
    "submitNewAnnotation":"render",
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

    var lyrics = this.$(".formatted-lyrics").text();
    var workingLyrics = lyrics.slice(0, lyrics.length);
    var workingOffset = 0;
    this.model.songFragments().forEach( function (fragment) {
      var fragmentRawText = lyrics.substring(fragment.get("offset_start") + 1, fragment.get("offset_end") + 1)
      var fragmentLink = fragmentRawText.link('/#songFragments/' + fragment.id);
      workingLyrics = workingLyrics.slice(0, fragment.get("offset_start") + workingOffset + 1) + fragmentLink + workingLyrics.slice(fragment.get("offset_end") + workingOffset + 1);
      workingOffset += (fragmentLink.length - fragmentRawText.length);
    })
    this.$(".formatted-lyrics").html(workingLyrics);

  },

  displayDescription: function(){
    var descriptionView = new Savant.Views.ShowSongDescription({ model: this.model });
    this.swapDetailsView(descriptionView);
  },

  displayAnnotation: function(event){
    event.preventDefault();
    var ypos = event.currentTarget.offsetTop;
    var fragmentId = $(event.currentTarget).attr("href").slice(16);
    //todo: find a better waty to do this (16 is len of '/#songFragments/')
    var fragment = this.model.songFragments().get(fragmentId);
    var lyricView = this;
    fragment.fetch({
      success: function(){
        var annotationView = new Savant.Views.ShowAnnotation({ model: fragment.annotation(), ypos: ypos });
        lyricView.swapDetailsView(annotationView);
      }
    })
    //todo: loading display
  },

  displayNewAnnotation: function(fragment){
    this.$("a[href='/#songFragments/" + fragment.id + "']").addClass("maybe-annotation");
    var newAnnotationView = new Savant.Views.NewAnnotation({ collection: this.model.songFragments(), fragment: fragment });
    this.swapDetailsView(newAnnotationView);
  },

  maybeAnnotate: function(event, priorSelection){

    if(Savant.currentUser.isSignedIn() && $(event.target)[0].className === "formatted-lyrics"){

      if (priorSelection){
        var selection = priorSelection;
        var selected = priorSelection.selected;
      } else {
        var selection = window.getSelection();
        var selected = selection.toString();
      }

      var lyricsDomCopy = this.$(".formatted-lyrics")
      var lyrics = lyricsDomCopy.text();
      var offsetStart = lyrics.indexOf(selected);
      //this conditional is trying to handle cases of repeated lyrics
      if( offsetStart !== lyrics.lastIndexOf(selected)) {
        if(selection.anchorOffset < selection.focusOffset){
          var selectionNodeOffset = selection.anchorOffset;
        } else {
          var selectionNodeOffset = selection.focusOffset;
        }
        var selectionNode = selection.anchorNode;
        var nodeText = selectionNode.textContent;

        var matchStr = "";
        for(var i = 0; i < nodeText.length; i++){
          matchStr += "Q";
        }

        var matchStrNode = document.createTextNode(matchStr);
        selectionNode.parentNode.insertBefore(matchStrNode, selectionNode);
        selectionNode.parentNode.removeChild(selectionNode);

        var modifiedLyrics = this.$(".formatted-lyrics").text();
        var trueOffset = modifiedLyrics.indexOf(matchStr) + selectionNodeOffset;

        var replacementNode = document.createTextNode(nodeText);

        matchStrNode.parentNode.insertBefore(replacementNode, matchStrNode);
        matchStrNode.parentNode.removeChild(matchStrNode);

        var replacementSelectRange = new Range();
        replacementSelectRange.setStart(replacementNode, selectionNodeOffset);
        replacementSelectRange.setEnd(replacementNode, selectionNodeOffset + selected.length);
        selection.removeAllRanges();
        selection.addRange(replacementSelectRange);

      } else {
        var trueOffset = offsetStart;
      }

      var maybeFragment = new Savant.Models.SongFragment()
      maybeFragment.save({
        song_id: this.model.id,
        offset_start: trueOffset - 1,
        offset_end: trueOffset - 1 + selected.length
      },
      {
        success: function(){
          this.model.songFragments().add(maybeFragment);
          this.render();
          this.displayNewAnnotation(maybeFragment);
        }.bind(this),
      });
    } else if (!Savant.currentUser.isSignedIn() && $(event.target)[0].className === "formatted-lyrics") {
      var currentSelection = window.getSelection();

      var priorSelection = {
        selected: currentSelection.toString(),
        focusOffset: currentSelection.focusOffset,
        anchorOffset: currentSelection.anchorOffset,
        anchorNode: currentSelection.anchorNode
      }

      Savant.router.requireSignedIn(this.maybeAnnotate.bind(this, event, priorSelection))
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
