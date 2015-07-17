Savant.Collections.SongFragments = Backbone.Collection.extend({
  url: "/api/song_fragments",
  model: Savant.Models.SongFragment,

  getOrFetch: function (id) {
    var songFragment = this.get(id)
    if (songFragment) {
      songFragment.fetch();
    } else {
      songFragment = new Savant.Models.SongFragment({ id: id });
      songFragment.fetch({
        success: function () {
          this.add(songFragment, { merge: true });
        }.bind(this)
      });
    }

    return songFragment;
  }

})
