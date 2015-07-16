window.Savant = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var songs = new Savant.Collections.Songs();
    Savant.router = new Savant.Routers.Router({ $rootEl: $("#content"), songs: songs })
    Backbone.history.start();
  }
};

$(document).ready(function(){
  Savant.initialize();
});
