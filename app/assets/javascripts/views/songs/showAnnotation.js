Savant.Views.ShowAnnotation = Backbone.CompositeView.extend({
  template: JST['shared/showDetails'],
  tagName: "section class='lyrics-details annotation'",
  commentsSelector: ".annotation-comments-container",

  render: function () {
    this.$el.html(this.template({ title: "Savant Annotation", details: this.model.get("contents") }));
    this.showComments();
    Backbone.$("body").on("click", this.checkClickAway.bind(this));
    return this;
  },

  checkClickAway: function (event) {
    if (!Backbone.$(event.target).closest(".details-container").length > 0){
      this.$el.trigger("clickAway");
    }
  },

  showComments: function(){
    var commentableInfo = {
      commentableType: "annotation",
      commentableId: this.model.id
    };

    var commentsView = new Savant.Views.showComments({ collection: this.model.comments(), commentableInfo: commentableInfo});
    this.addSubview(this.commentsSelector, commentsView);
  }
})
