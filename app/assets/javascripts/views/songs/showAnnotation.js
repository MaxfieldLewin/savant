Savant.Views.ShowAnnotation = Backbone.CompositeView.extend({
  template: JST['songs/showDetails'],
  tagName: "article class='lyrics-details annotation'",

  render: function () {
    this.$el.html(this.template({ title: "Savant Annotation", details: this.model.get("contents") }));
    return this;
  }
})
