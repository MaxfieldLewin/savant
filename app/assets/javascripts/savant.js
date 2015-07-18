window.Savant = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    this.currentUser = new Savant.Models.CurrentUser();
    this.currentUser.fetch();

    this.router = new Savant.Routers.Router({ $rootEl: $("#content") })
    Backbone.history.start();
  }
};

$(document).ready(function(){
  Savant.initialize();
});
