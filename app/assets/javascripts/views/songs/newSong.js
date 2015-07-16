Savant.Views.NewSong = Backbone.View.extend({
  template: JST['songs/newSong'],

  events: {
    "submit form":"submitSong"
  },

  initialize: function () {
    this.artists = new Savant.Collections.Artists();
    this.artists.fetch()
    this.listenTo(this.collection, "sync", this.render);
    this.listenTo(this.artists, "sync", this.render);
  },

  render: function () {
    this.$el.html(this.template({ song: this.model, artists: this.artists }));
    return this;
  },

  submitSong: function (event) {
    event.preventDefault();
    var attrs = $(event.currentTarget).serializeJSON();

    this.model.save(attrs, {
      success: function () {
        this.collection.add(this.model);
        Savant.router.navigate("/#songs/" + this.model.id, {trigger: true})
      }.bind(this),

      error: function (model, response) {
        $(".errors").empty()
        response.responseJSON.forEach(function(error){
          $(".errors").append(error + "<br>");
        }.bind(this))
      }.bind(this)

    })

  }
})
