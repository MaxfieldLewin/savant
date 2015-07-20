Savant.Models.Song = Backbone.Model.extend({
  urlRoot: "/api/songs",

  songFragments: function(){
    if(!this._songFragments) {
      this._songFragments = new Savant.Collections.SongFragments();
    }

    return this._songFragments;
  },

  comments: function(){
    if(!this._comments) {
      this._comments = new Savant.Collections.Comments();
    }

    return this._comments;
  },

  parse: function(response){
    if(response.song_fragments) {
      this.songFragments().set(response.song_fragments, {parse: true});
      delete response.song_fragments;
    };

    if(response.comments) {
      this.comments().set(response.comments, {parse: true});
      delete response.comments;
    };

    return response;
  }
})
