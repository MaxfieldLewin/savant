Savant.Views.ShowSong = Backbone.CompositeView.extend({
  template: JST['rootViews/showSong'],
  events: {
    "click .edit-lyrics":"editLyrics"
  },

  lyricsSelector: ".song-lyrics-container",
  annotationsSelector: ".annotation-container",


  render: function () {
    this.$el.html(this.template({ song: this.model }));
    this.showLyrics();
    return this;
  },

  showLyrics: function () {
    if(this._mainView){
      this.removeSubview(this.lyricsSelector, this._mainView);
    }
    var lyricsView = new Savant.Views.ShowLyrics({ model: this.model });
    this.addSubview(this.lyricsSelector, lyricsView);
    this._mainView = lyricsView;
  },

  editLyrics: function () {
    var editView = new Savant.Views.EditLyrics({ model: this.model });
    this.removeSubview(this.lyricsSelector, this._mainView);
    this.addSubview(this.lyricsSelector, editView);
    this._mainView = editView;
    this.listenToOnce(this._mainView, "cancelEdit submitEdit", this.showLyrics);
  }

})
