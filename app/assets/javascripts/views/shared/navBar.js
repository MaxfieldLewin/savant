Savant.Views.NavBar = Backbone.View.extend({
  template: JST['shared/navBar'],
  signupForm: JST['shared/signup'],
  signinForm: JST['shared/signin'],
  resultsBox: JST['shared/resultsBox'],

  events: {
    "click #nav-signup":"signupModal",
    "click #nav-signin":"signinModal",
    "click #nav-signout":"signout",
    "click .nav-tag-item":"changeGenre",
    "input .nav-search-bar":"updateSearchResults"
  },

  initialize: function(options){
    this.$pageRef = Backbone.$(document);
    this.listenTo(Savant.currentUser, "signIn signOut", this.render);
    this.listenTo(Backbone.history, "route", this.toggleSmallTitle);

    this.searchResults = new Savant.Collections.SearchResults();
    this.listenTo(this.searchResults, "sync", this.displaySearchResults);
    this.listenTo(Backbone.history, "route", this.clearSearchResults)

  },

  render: function(){
    this.$el.html(this.template({ user: Savant.currentUser, genres: this.collection }));
    return this;
  },

  updateSearchResults: function(event){
    var queryStr = $(event.currentTarget).val();
    if (queryStr.length < 2){
      this.clearSearchResults();
    } else {
      this.searchResults.fetch({ data: { query: queryStr } });
    }
  },

  displaySearchResults: function(){
    if (!this.searchResults.isEmpty()){
      $(".nav-search-box").addClass("active");
      $(".nav-search-box").html(this.resultsBox({ models: this.searchResults.models }));
    }
  },

  clearSearchResults: function(){
    $(".nav-search-box").removeClass("active");
    $(".nav-search-box").empty();
  },

  signupModal: function(){
    if (Savant.router.requireSignedOut()) {
      $(window).scrollTop(0);
      var modal = this.$pageRef.find("#modal-container")
      modal.find(".modal-form").html(this.signupForm({ user: this.model }));
      modal.addClass("is-open");
      this.$pageRef.find(".modal-screen").one("click", this.cancelModal.bind(this));
      this.$pageRef.find(".modal-signup").one("submit", this.submitSignup.bind(this));
    }
  },

  signinModal: function(callback, message){
    $(window).scrollTop(0);
    var modal = this.$pageRef.find("#modal-container")
    modal.find(".modal-form").html(this.signinForm({ user: this.model }));
    modal.addClass("is-open");
    if (message){
      modal.find(".message-container").html(message);
    }
    this.$pageRef.find(".modal-screen").one("click", this.cancelModal.bind(this));
    this.$pageRef.find(".modal-signin").one("submit", this.submitSignin.bind(this, callback));
    this.$pageRef.find(".modal-signin .guest-button").one("click", this.guestSignin.bind(this, callback));
  },

  cancelModal: function(){
    var modal = this.$pageRef.find("#modal-container")
    modal.find(".modal-form").empty();
    modal.removeClass("is-open");
  },

  submitSignup: function(event, callback){
    event.preventDefault();
    var attrs = $(event.target).serializeJSON();

    this.model.save(attrs["user"], {
      success: function(){
        this.cancelModal();
        this.render();
        Savant.currentUser.signIn({
          login_string: attrs["user"].username,
          password: attrs["user"].password
        });
      }.bind(this),

      error: function(model, response){
        this.$pageRef.find(".modal-signup > .errors").empty();
        response.responseJSON.forEach( function(error){
          this.$pageRef.find(".modal-signup > .errors").append(error + "<br>");
        }.bind(this));
        this.$pageRef.find("#username").val(model.get("username"));
        this.$pageRef.find("#email").val(model.get("email"));
        this.$pageRef.find(".modal-signup").one("submit", this.submitSignup.bind(this));
      }.bind(this)
    });
  },

  submitSignin: function(callback, event){
    event.preventDefault();
    var credentials = $(event.target).serializeJSON();
    Savant.currentUser.signIn({
      login_string: credentials["login_string"],
      password: credentials["password"],

      success: function(){
        this.cancelModal();
        callback();
      }.bind(this),

      error: function (response) {
        this.$pageRef.find(".modal-signin > .errors").empty();
        response.responseText.forEach( function(error){
          this.$pageRef.find(".modal-signin > .errors").append(error + "<br>");
        }.bind(this));
        this.$pageRef.find("#loginString").val(credentials["user"].login_string);
        this.$pageRef.find(".modal-signin").one("submit", this.submitSignup.bind(this));
      }.bind(this)
    })
  },

  guestSignin: function(callback){
    Savant.currentUser.signIn({
      login_string: "Guest",
      password: "guestguest",

      success: function(){
        this.cancelModal();
        callback();
      }.bind(this)
    });
  },

  signout: function(event){
    event.preventDefault();
    Savant.currentUser.signOut();
  },

  changeGenre: function(event){
    event.preventDefault();
    Savant.router.navigate(event.target.hash, {trigger: true})
  },

  toggleSmallTitle: function(router, route){
    if (route === "splashPage"){
      $(".small-title").removeClass("visible");
    } else {
      $(".small-title").addClass("visible");
    }
  }

})
