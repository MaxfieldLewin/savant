Savant.Views.SplashPage = Backbone.CompositeView.extend({
  template: JST['shared/splashPage'],

  events: {
    "click .guest-signin":"guestSignin"
  },

  initialize: function(){
    this.listenTo(this.collection, "sync", this.render);
  },

  render: function(){
    this.$el.html(this.template({ songs: this.collection }));
    return this;
  },

  guestSignin: function(){
    Savant.currentUser.signIn({
      login_string: "max",
      password: "maxmax"
    });
    this.$(".title-buttons").empty();
    this.$(".title-area-container").addClass("no-buttons");
  }
})
