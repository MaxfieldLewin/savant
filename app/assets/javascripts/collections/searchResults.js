Savant.Collections.SearchResults = Backbone.Collection.extend({
  url: '/api/search',

  model: function(attrs){
    var type = attrs._type;
    delete attrs._type;

    return new Savant.Models[type](attrs);
  }
})
