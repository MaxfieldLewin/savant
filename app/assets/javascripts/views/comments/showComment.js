Savant.Views.ShowComment = Backbone.View.extend({
  template: JST['comments/showComment'],
  tagName: "li class='comment-list-item'",

  render: function(){
    console.log("In individual comment render");
    this.$el.html(this.template({ comment: this.model }));
    return this;
  }
})
