Savant.Routers.Router = Backbone.Router.extend({
  initialize: function (options) {
    this.$rootEl = options.$rootEl;
    this.songs = options.songs;
    this.installNav();
  },

  routes: {
    "":"splashPage"
  },

  installNav: function () {
    user = new Savant.Models.User();
    var nav = new Savant.Views.NavBar({ model: user, $pageRef: $(document) })
    $("#nav-container").html(nav.render().$el);
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
