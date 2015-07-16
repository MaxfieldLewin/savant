Savant.Views.ShowSong = Backbone.CompositeView.extend({
  template: JST['rootViews/showSong'],
  events: {

  },

  initialize: function () {
    this.artist = new Savant.Models.Artist({ id: this.model.id })
    this.listenTo(this.model, "sync change", this.render); //may need to push this down to subviews
  },

  render: function () {
    this.$el.html(this.template({ song: this.model, }))
  }

})
