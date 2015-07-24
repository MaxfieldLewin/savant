Savant.Views.ShowComment = Backbone.View.extend({
  template: JST['comments/showComment'],
  tagName: "li class='comment-list-item'",

  render: function(){
    if (this.model.has("image_url")){
      var imageUrl = this.model.escape("image_url");
    } else {
      var imageUrl = false;
    }
    this.$el.html(this.template({ comment: this.model, imageUrl: imageUrl }));
    return this;
  }
})
