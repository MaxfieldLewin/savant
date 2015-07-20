Savant.Models.Annotation = Backbone.Model.extend({
  urlRoot: "/api/annotations",

  toJSON: function(){
    var json = {annotation: _.clone(this.attributes)};
    return json;
  },

  comments: function(){
    if(!this._comments) {
      this._comments = new Savant.Collections.Comments();
    }

    return this._comments;
  },

  parse: function(response){
    if (response.comments) {
      this.comments().set(response.comments, {parse: true});
      delete response.comments;
    };

    return response;
  }

})
