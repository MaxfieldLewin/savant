Savant.Views.SplashPage = Backbone.CompositeView.extend({
  template: JST['shared/splashPage'],

  initialize: function () {
    this.listenTo(this.collection, "sync", this.render);
  },

  render: function () {
    this.$el.html(this.template({ songs: this.collection }));
    return this;
  }
})
