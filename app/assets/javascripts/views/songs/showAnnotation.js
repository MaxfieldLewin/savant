Savant.Views.ShowAnnotation = Backbone.CompositeView.extend({
  template: JST['songs/showDetails'],
  tagName: "article class='lyrics-details annotation'",

  render: function () {
    this.$el.html(this.template({ title: "Savant Annotation", details: this.model.get("contents") }));
    Backbone.$("body").on("click", this.checkClickAway.bind(this));
    return this;
  },

  checkClickAway: function (event) {
    if (!Backbone.$(event.target).closest(".details-container").length > 0){
      this.$el.trigger("clickAway");
    }
  }
})
