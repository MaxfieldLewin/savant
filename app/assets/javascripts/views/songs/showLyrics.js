Savant.Views.ShowLyrics = Backbone.CompositeView.extend({
  template: JST['songs/showLyrics'],
  tagName: "section class='group'",
  lyricsSelector: ".formatted-lyrics",
  detailsSelector: ".details-container",

  events: {
    "click a":"displayAnnotation",
    "click :not('a'), :not('.details-container')":"installDescription"
  },

  initialize: function () {
    this.listenTo(this.model, "sync change", this.render);
  },

  render: function () {
    this.$el.html(this.template({ song: this.model }));
    this.installFragments();
    this.installDescription();
    return this;
  },

  installFragments: function () {
    var lyrics = $(".formatted-lyrics").text();
    var workingLyrics = lyrics.slice(0, lyrics.length);
    var workingOffset = 0;
    var fragmentIds = [];
    this.model.songFragments().forEach( function (fragment) {
      var fragmentRawText = lyrics.substring(fragment.get("offset_start"), fragment.get("offset_end") + 1)
      var fragmentLink = fragmentRawText.link('/#songFragments/' + fragment.id);
      workingLyrics = workingLyrics.replace(fragmentRawText, function (match, offset, string) {
        //need to ensure repeated lyrics don't get replaced by the same fragment
        if (offset === fragment.get("offset_start") + workingOffset){
          workingOffset += (fragmentLink.length - fragmentRawText.length);
          fragmentIds.push(fragment.id);
          return fragmentLink;
        } else {
          return fragmentRawText;
        }
      })
    })
    $(".formatted-lyrics").html(workingLyrics);

    $(".formatted-lyrics a").each( function(link){
      $(link).data("fragmentId", fragmentIds.shift());
    });
  },

  installDescription: function () {
    var descriptionView = new Savant.Views.ShowDescription({ model: this.model })
    this.swapDetailsView(descriptionView);
  },

  displayAnnotation: function (event) {
    event.preventDefault();
    var fragmentId = $(event.currentTarget).attr("href").slice(16);
    var fragment = this.model.songFragments().get(fragmentId);
    var lyricView = this;
    fragment.fetch({
      success: function () {
        var annotationView = new Savant.Views.ShowAnnotation({ model: fragment.annotation() })
        lyricView.swapDetailsView(annotationView);
      }
    })

    //todo: loading display
  },

  swapDetailsView: function (view) {
    if(this._detailsView){
      this.removeSubview(this.detailsSelector, this._detailsView)
      $(this.detailsSelector).empty();
    }

    this.addSubview(this.detailsSelector, view);
    this._detailsView = view;
  }

})
