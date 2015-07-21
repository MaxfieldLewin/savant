Savant.Views.ShowComment = Backbone.View.extend({
  template: JST['comments/showComment'],
  tagName: "li class='comment-list-item'",

  render: function(){
    this.$el.html(this.template({ comment: this.model }));
    return this;
  }
})
