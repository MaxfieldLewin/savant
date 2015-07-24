Savant.Views.ShowArtistDescription = Backbone.CompositeView.extend({
  template: JST['shared/showDetails'],
  tagName: "section class='artist-details description'",

  render: function () {
    var titleStr = "About " + this.model.get("name");
    var description = this.model.get("description");
    this.$el.html(this.template({ title: titleStr, details: description, imageUrl: false }));
    return this;
  }
})
