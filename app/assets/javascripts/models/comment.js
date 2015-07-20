Savant.Models.Comment = Backbone.Model.extend({
  urlRoot: "/api/comments",

  toJSON: function(){
    var json = {comment: _.clone(this.attributes)};
    return json;
  }

})
