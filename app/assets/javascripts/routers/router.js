Savant.Routers.Router = Backbone.Router.extend({
  initialize: function (options) {
    this.$rootEl = options.$rootEl;
    this.songs = options.songs;
    this.installNav();
  },

  routes: {
    "":"splashPage",
    "songs/new":"newSong",
    "songs/:id":"showSong"
  },

  installNav: function () {
    user = new Savant.Models.User();
    var nav = new Savant.Views.NavBar({ model: user, $pageRef: $(document) })
    $("#nav-container").html(nav.render().$el);
  },

  splashPage: function () {
    this.songs.fetch();
    var view = new Savant.Views.SplashPage({ collection: this.songs })
    this.swapRootView(view);
  },

  newSong: function () {
    var song = new Savant.Models.Song();
    var view = new Savant.Views.NewSong({ model: song, collection: this.songs });
    this.swapRootView(view)
  },

  showSong: function (id) {
    var song = new Savant.Models.Song({ id: id })
    song.fetch({
      success: function () {
        var view = new Savant.Views.ShowSong( { model: song })
        this.swapRootView(view);
      }.bind(this)
    })
  },

  swapRootView: function (view) {
    if (this._currentRootView) {
      this._currentRootView.remove();
    }

    this.$rootEl.html(view.render().$el);
    this._currentRootView = view;
  },

  logIn: function (user) {
    if(user && user.get("login_status")){
      this._currentUser = user;
    }
  }

})
