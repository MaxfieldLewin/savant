Savant.Routers.Router = Backbone.Router.extend({
  initialize: function (options) {
    this.$rootEl = options.$rootEl;
    this.songs = options.songs;
  },

  routes: {
    "":"splashPage"
  },

  splashPage: function () {
    var view = new Savant.Views.SplashPage({ collection: this.songs })
    this.swapRootView(view);
  },

  swapRootView: function (view) {
    if (this._currentRootView) {
      this._currentRootView.remove();
    }

    this.$rootEl.html(view.render().$el);
    this._currentRootView = view;
  }

})
