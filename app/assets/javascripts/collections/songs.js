Savant.Collections.Songs = Backbone.Collection.extend({
  url: "/api/songs",
  model: Savant.Models.Song,

  getOrFetch: function (id) {
    var song = this.get(id)
    if (song) {
      song.fetch();
    } else {
      song = new Savant.Models.Song({ id: id });
      song.fetch({
        success: function () {
          this.add(song, { merge: true });
        }.bind(this)
      });
    }

    return song;
  }
})
