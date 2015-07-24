Savant.Views.ShowArtistDescription = Backbone.CompositeView.extend({
  template: JST['shared/showDetails'],
  tagName: "section class='artist-details description'",
  commentsSelector: ".details-comments-container",

  render: function () {
    var titleStr = "About " + this.model.get("name");
    var description = this.model.get("description");
    this.$el.html(this.template({ title: titleStr, details: description, imageUrl: false }));
    this.showComments();
    return this;
  },

  showComments: function(){
    var commentableInfo = {
      commentableType: "Artist",
      commentableId: this.model.id
    };

    var commentsView = new Savant.Views.ShowComments({ collection: this.model.comments(), commentableInfo: commentableInfo});
    this.addSubview(this.commentsSelector, commentsView);
  }
})
