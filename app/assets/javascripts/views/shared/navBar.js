Savant.Views.NavBar = Backbone.View.extend({
  template: JST['shared/navBar'],
  signupForm: JST['shared/signup'],
  signinForm: JST['shared/signin'],

  events: {
    "click #nav-signup":"signupModal",
    "click #nav-signin":"signinModal"
  },

  initialize: function (options) {
    this.$pageRef = options.$pageRef;
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(Backbone.history, "route", this.toggleSmallTitle);
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

  signinModal: function (event) {
    var modal = this.$pageRef.find("#modal-container")
    modal.find(".modal-form").html(this.signinForm({ user: this.model }));
    modal.addClass("is-open");
    this.$pageRef.find(".modal-screen").one("click", this.cancelModal.bind(this));
    this.$pageRef.find(".modal-signin").one("submit", this.submitSignin.bind(this));
  },

  cancelModal: function () {
    var modal = this.$pageRef.find("#modal-container")
    modal.find(".modal-form").empty();
    modal.removeClass("is-open");
  },

  submitSignup: function (event) {
    event.preventDefault();
    var attrs = $(event.target).serializeJSON();
    this.model.save(attrs["user"], {
      success: function () {
        Savant.router.logIn(this.model);
        this.cancelModal();
        this.render();
      }.bind(this),

      error: function (model, response) {
        this.$pageRef.find(".modal-signup > .errors").empty();
        response.responseJSON.forEach(function(error){
          this.$pageRef.find(".modal-signup > .errors").append(error + "<br>");
        }.bind(this));
        this.$pageRef.find("#username").val(model.get("username"));
        this.$pageRef.find("#email").val(model.get("email"));
        this.$pageRef.find(".modal-signup").one("submit", this.submitSignup.bind(this));
      }.bind(this)
    });
  },

  submitSignin: function (event) {
    event.preventDefault();
    var credentials = $(event.target).serializeJSON();
    this.model.set("login_string", credentials["login_string"])
    var loginReq = jQuery.ajax({
      type: "POST",
      url: "/session",
      data: credentials,
      dataType: "JSON",

      success: function (data) {
        this.model.set(data);
        Savant.router.logIn(this.model);
        this.cancelModal();
        this.render();
      }.bind(this),

      error: function (response) {
        this.$pageRef.find(".modal-signin > .errors").empty();
        response.responseText.forEach(function(error){
          this.$pageRef.find(".modal-signin > .errors").append(error + "<br>");
        }.bind(this));
        this.$pageRef.find("#loginString").val(model.get("login_string"));
        this.$pageRef.find(".modal-signin").one("submit", this.submitSignup.bind(this));
      }.bind(this)
    })
  },

  toggleSmallTitle: function (router, route) {
    if (route === "splashPage"){
      $(".small-title").removeClass("visible");
    } else {
      $(".small-title").addClass("visible");
    }
  }

})
