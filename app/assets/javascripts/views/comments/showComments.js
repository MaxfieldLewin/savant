Savant.Views.ShowComments = Backbone.CompositeView.extend({
  template: JST['comments/showComments'],
  commentSelector: ".comments-list",
  formSelector: ".new-comment-container",

  events: {
    "focus input":"newComment"
  },

  initialize: function(options){
    this.commentableInfo = options.commentableInfo;
    this.listenTo(this.collection, "sync add", this.render)
  },

  render: function(){
    this.$el.html(this.template());
    this.collection.forEach( function(comment){
      var view = new Savant.Views.ShowComment({ model: comment });
      this.addSubview(this.commentSelector, view);
    }.bind(this));

    return this;
  },

  newComment: function(event){
    if (Savant.currentUser.isSignedIn){
      $(this.formSelector).empty();
      var view = new Savant.Views.NewComment({ collection: this.collection, commentableInfo: this.commentableInfo});
      this.addSubview(this.formSelector, view);
      $(".new-comment-input").focus();
    } else {
      Savant.router._navBar.singinModal();
    }
  }

})
