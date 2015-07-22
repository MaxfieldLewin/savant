Savant.Routers.Router = Backbone.Router.extend({
  initialize: function(options){
    this.$rootEl = options.$rootEl;
    this.installNav();
    this.installFooter();
  },

  routes: {
    "":"splashPage",
    "genres/:id":"splashPage",
    "songs/new":"newSong",
    "songs/:id":"showSong",
    "artists/:id":"showArtist"
  },

  installNav: function(){
    var genres = new Savant.Collections.Genres();
    genres.fetch({
      success: function(){
        this._navBar = new Savant.Views.NavBar({ model: new Savant.Models.User(), collection: genres });
        $("#nav-container").html(this._navBar.render().$el);
      }.bind(this)
    })
  },

  installFooter: function(){
    this._footer = new Savant.Views.Footer();
    $("#footer-container").html(this._footer.render().$el);
  },

  splashPage: function(id){
    var songs = new Savant.Collections.Songs();
    songs.fetch();
    var view = new Savant.Views.SplashPage({ collection: songs });
    this.swapRootView(view);
  },

  newSong: function(){
    var song = new Savant.Models.Song();
    var view = new Savant.Views.NewSong({ model: song });
    this.swapRootView(view);
  },

  showSong: function(id){
    var song = new Savant.Models.Song({ id: id });
    song.fetch({
      success: function(){
        var view = new Savant.Views.ShowSong({ model: song });
        this.swapRootView(view);
      }.bind(this)
    });
  },

  showArtist: function(id){
    var artist = new Savant.Models.Artist({ id: id });
    artist.fetch();
    var view = new Savant.Views.ShowArtist({ model: artist });
    this.swapRootView(view);
  },

  requireSignedIn: function(callback){
    if (!Savant.currentUser.isSignedIn()) {
      callback = callback || this._goHome.bind(this);
      this._navBar.signIn(callback);
      return false;
    }

    return true;
  },

  requireSignedOut: function(callback){
    if(Savant.currentUser.isSignedIn()) {
      callback = callback || this._goHome.bind(this);
      callback();
      return false;
    }

    return true;
  },

  _goHome: function(){
    Backbone.history.navigate("", { trigger: true });
  },

  swapRootView: function(view){
    if (this._currentRootView) {
      this._currentRootView.remove();
    }

    this.$rootEl.html(view.render().$el);
    this._currentRootView = view;
  }

})
