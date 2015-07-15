Savant.Collections.Artists = Backbone.Collection.extend({
  url: "/api/artists",
  model: Savant.Models.Artist,

  getOrFetch: function (id) {
    var artist = this.get(id)
    if (artist) {
      artist.fetch();
    } else {
      artist = new Savant.Models.Artist({ id: id });
      artist.fetch({
        success: function () {
          this.add(artist, { merge: true });
        }.bind(this)
      });
    }

    return artist;
  }

})
