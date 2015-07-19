Savant.Models.Artist = Backbone.Model.extend({
  urlRoot: "/api/artists",

  songs: function () {
    if(!this._songs){
      this._songs = new Savant.Collections.Songs();
    }

    return this._songs;
  },

  parse: function (response) {
    if (response.songs) {
      this.songs().set(response.songs, {parse: false});
      delete response.songs;
    }

    return response;
  }
})
