Savant.Models.Artist = Backbone.Model.extend({
  urlRoot: "/api/artists",

  songs: function () {
    if(!this._songs){
      this._songs = new Savant.Collections.Songs();
    }

    return this._songs;
  },

  comments: function(){
    if(!this._comments) {
      this._comments = new Savant.Collections.Comments();
    }

    return this._comments;
  },

  parse: function (response) {
    if (response.songs) {
      this.songs().set(response.songs, {parse: false});
      delete response.songs;
    };

    if (response.comments) {
      this.comments().set(response.comments, {parse: true});
      delete response.comments;
    };

    return response;
  }
})
