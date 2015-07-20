Savant.Views.ShowArtist = Backbone.CompositeView.extend({
  template: JST['artists/showArtist'],
  detailsSelector: ".artist-details-container",
  commentsSelector: ".details-comments-container",

  initialize: function(){
    this.listenTo(this.model, "sync", this.render);
  },

  render: function(){
    this.$el.html(this.template({ artist: this.model, songs: this.model.songs() }));
    var descriptionView = new Savant.Views.ShowArtistDescription({ model: this.model })
    this.addSubview(this.detailsSelector, descriptionView)
    this.showComments();
    return this;
  },

  showComments: function(){
    var commentableInfo = {
      commentableType: "artist",
      commentableId: this.model.id
    };

    var commentsView = new Savant.Views.ShowComments({ collection: this.model.comments(), commentableInfo: commentableInfo});
    this.addSubview(this.commentsSelector, commentsView);
  }
})
