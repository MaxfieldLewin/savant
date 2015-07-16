Savant.Views.ShowLyrics = Backbone.CompositeView.extend({
  template: JST['songs/showLyrics'],

  initialize: function () {
    this.listenTo(this.model, "sync change", this.render);
  },

  render: function () {
    this.$el.html(this.template({ song: this.model }));
    return this;
  }
})
