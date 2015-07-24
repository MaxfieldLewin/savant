Savant.Views.ShowSongDescription = Backbone.CompositeView.extend({
  template: JST['shared/showDetails'],
  tagName: "section class='lyrics-details description'",

  render: function () {
    this.$el.html(this.template({ title: "Description", details: this.model.get("description"), imageUrl: false }));
    return this;
  }
})
