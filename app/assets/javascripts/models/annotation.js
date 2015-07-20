Savant.Models.Annotation = Backbone.Model.extend({
  urlRoot: "/api/annotations",

  toJSON: function(){
    var json = {annotation: _.clone(this.attributes)};
    return json;
  },
})
