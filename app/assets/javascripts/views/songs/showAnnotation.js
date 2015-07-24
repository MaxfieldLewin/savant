Savant.Views.ShowAnnotation = Backbone.CompositeView.extend({
  template: JST['shared/showDetails'],
  tagName: "section class='lyrics-details annotation'",
  commentsSelector: ".details-comments-container",

  initialize: function(options){
    this.verticalOffset = options.ypos - 440; //nav + song image heights, not going to be exact
  },

  render: function(){
    if (this.model.has("image_url")){
      var imageUrl = this.model.escape("image_url");
    } else {
      var imageUrl = false;
    }
    this.$el.html(this.template({ title: "Savant Annotation", details: this.model.get("contents"), imageUrl: imageUrl }));
    this.$el.css({top: this.verticalOffset});
    this.showComments();
    Backbone.$("body").on("click", this.checkClickAway.bind(this));
    return this;
  },

  checkClickAway: function(event){
    if (!Backbone.$(event.target).closest(".details-container").length > 0){
      this.$el.trigger("clickAway");
    }
  },

  showComments: function(){
    var commentableInfo = {
      commentableType: "Annotation",
      commentableId: this.model.id
    };

    var commentsView = new Savant.Views.ShowComments({ collection: this.model.comments(), commentableInfo: commentableInfo});
    this.addSubview(this.commentsSelector, commentsView);
  }
})
