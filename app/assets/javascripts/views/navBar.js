Savant.Views.NavBar = Backbone.View.extend({
  template: JST['navBar'],
  signupForm: JST['signup'],
  signinForm: JST['signin'],

  events: {
    "click #nav-signup":"signup",
    "click #nav-signin":"signin"
  },

  initialize: function (options) {
    this.pageRef = options.pageRef;
  },

  render: function () {
    this.$el.html(this.template({ user: this.model }));
    return this;
  },

  signup: function () {
    var modal = this.pageRef.find("#modal-container")
    modal.find(".modal-form").html(this.signupForm({ user: this.model }));
    modal.toggleClass("is-open");
  }
})
