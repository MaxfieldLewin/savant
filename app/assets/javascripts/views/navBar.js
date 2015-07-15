Savant.Views.NavBar = Backbone.View.extend({
  template: JST['navBar'],
  tagName: "nav class='nav-main'",

  render: function () {
    this.$el.html(this.template({ user: this.model }));
    return this;
  }
})
