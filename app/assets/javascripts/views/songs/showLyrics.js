Savant.Views.ShowLyrics = Backbone.CompositeView.extend({
  template: JST['songs/showLyrics'],

  initialize: function () {
    this.listenTo(this.model, "sync change", this.render);
  },

  render: function () {
    this.$el.html(this.template({ song: this.model }));
    this.installFragments();
    return this;
  },

  installFragments: function () {
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
  }

})
