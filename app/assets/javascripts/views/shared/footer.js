Savant.Views.Footer = Backbone.View.extend({
  template: JST["shared/footer"],

  render: function(){
    this.$el.html(this.template());
    return this;
  }
})
