Savant.Models.SongFragment = Backbone.Model.extend({
  urlRoot: "/api/song_fragments",

  annotation: function () {
    if(!this._annotation){
      this._annotation = new Savant.Models.Annotation();
    }

    return this._annotation;
  },

  toJSON: function(){
    var json = {song_fragment: _.clone(this.attributes)};
    return json;
  },

  parse: function (response) {
    if (response.annotation) {
      this.annotation().set(response.annotation, {parse: true});
      delete response.annotation;
    }

    return response;
  }

})
