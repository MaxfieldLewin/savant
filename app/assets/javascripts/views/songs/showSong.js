Savant.Views.ShowSong = Backbone.CompositeView.extend({
  template: JST['songs/showSong'],
  events: {
    "click .edit-lyrics":"editLyrics"
  },

  containerSelector: ".song-lyrics-and-details-container",
  commentsSelector: ".song-comments-container",

  render: function () {
    this.$el.html(this.template({ song: this.model }));
    this.showLyrics();
    this.showComments();
    return this;
  },

  showLyrics: function () {
    if(this._mainView){
      this.removeSubview(this.containerSelector, this._mainView);
    }
    var lyricsView = new Savant.Views.ShowLyrics({ model: this.model });
    this.addSubview(this.containerSelector, lyricsView);
    this._mainView = lyricsView;
  },

  editLyrics: function () {
    var editView = new Savant.Views.EditLyrics({ model: this.model });
    this.removeSubview(this.containerSelector, this._mainView);
    this.addSubview(this.containerSelector, editView);
    this._mainView = editView;
    this.listenToOnce(this._mainView, "cancelEdit submitEdit", this.showLyrics);
  },

  showComments: function(){
    var commentableInfo = {
      commentableType: "song",
      commentableId: this.model.id
    };

    var commentsView = new Savant.Views.showComments({ collection: this.model.comments(), commentableInfo: commentableInfo});
    this.addSubview(this.commentsSelector, commentsView);
  }

})
