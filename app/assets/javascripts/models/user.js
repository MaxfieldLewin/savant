Savant.Models.User = Backbone.Model.extend({
  urlRoot: "/api/users"
});

Savant.Models.CurrentUser = Savant.Models.User.extend({
  url: "/api/session",

  initialize: function(options){
    this.listenTo(this, "change", this.fireSessionEvent);
  },

  isSignedIn: function(){
    return !this.isNew();
  },

  signIn: function(options){
    var credentials = {
      "user[login_string]": options.login_string,
      "user[password]": options.password
    };

    $.ajax({
      url: this.url,
      method: "POST",
      data: credentials,
      dataType: "json",

      success: function(data){
        this.set(data);
        options.success && options.success();
      }.bind(this),

      error: function(){
        options.error && options.error();
      }
    })
  },

  signOut: function(options){
    $.ajax({
      url: this.url,
      method: "DELETE",
      dataType: "json",
      success: function(model){
        this.clear();
        options.success && options.success();
      }.bind(this)
    })
  },

  fireSessionEvent: function(){
    if(this.isSignedIn()){
      this.trigger("signIn");
    } else {
      this.trigger("signOut");
    }
  }

})
