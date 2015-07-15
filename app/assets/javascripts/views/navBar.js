Savant.Views.NavBar = Backbone.View.extend({
  template: JST['navBar'],
  signupForm: JST['signup'],
  signinForm: JST['signin'],

  events: {
    "click #nav-signup":"signupModal",
    "click #nav-signin":"signinModal"
  },

  initialize: function (options) {
    this.$pageRef = options.$pageRef;
    this.listenTo(this.model, "sync", this.render);
  },

  render: function () {
    this.$el.html(this.template({ user: this.model }));
    return this;
  },

  signupModal: function (event) {
    var modal = this.$pageRef.find("#modal-container")
    modal.find(".modal-form").html(this.signupForm({ user: this.model }));
    modal.addClass("is-open");
    this.$pageRef.find(".modal-screen").one("click", this.cancelModal.bind(this));
    this.$pageRef.find(".modal-signup").one("submit", this.submitSignup.bind(this));
  },

  cancelModal: function (event) {
    console.log("in cancel modal");
    var modal = this.$pageRef.find("#modal-container")
    modal.find(".modal-form").empty();
    modal.removeClass("is-open");
  },

  submitSignup: function (event) {
    event.preventDefault();
    console.log(event);
    var attrs = $(event.target).serializeJSON();
    this.model = new Savant.Models.User(attrs);
    this.model.save({
      success: function () {

      }.bind(this),

      error: funciton (model) {

      }.bind(this)
    });
  }

})
