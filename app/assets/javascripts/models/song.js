Savant.Models.Song = Backbone.Model.extend({
  urlRoot: "/api/songs",

  songFragments: function () {
    if(!this._songFragments){
      this._songFragments = new Savant.Collections.SongFragments();
    }

    return this._songFragments;
  },

  parse: function (response) {
    if (response.song_fragments) {
      this.songFragments().set(response.song_fragments, {parse: true});
      delete response.song_fragments;
    }

    return response;
  }
})
