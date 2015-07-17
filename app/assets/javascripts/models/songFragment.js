Savant.Models.SongFragment = Backbone.Model.extend({
  urlRoot: "/api/song_fragments",

  annotation: function () {
    if(!this._annotation){
      this._annotation = new Savant.Models.Annotation();
    }

    return this._annotation;
  },

  parse: function (response) {
    if (response.annotation) {
      this.annotation().set(response.annotation, {parse: true});
      delete response.annotation;
    }

    return response;
  }

})
