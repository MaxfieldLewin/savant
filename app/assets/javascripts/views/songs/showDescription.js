Savant.Views.ShowDescription = Backbone.CompositeView.extend({
  template: JST['songs/showDetails'],
  tagName: "article class='lyrics-details description'",

  render: function () {
    this.$el.html(this.template({ title: "Description", details: this.model.get("description") }));
    return this;
  }
})
