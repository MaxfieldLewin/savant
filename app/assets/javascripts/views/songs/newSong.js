Savant.Views.NewSong = Backbone.View.extend({
  template: JST['songs/newSong'],

  events: {
    "submit form":"submitSong"
  },

  initialize: function () {
    this.artists = new Savant.Collections.Artists();
    this.artists.fetch()
    this.listenTo(this.artists, "sync", this.render);
  },

  render: function () {
    this.$el.html(this.template({ song: this.model }));
    var artistNames = this.artists.map( function(artist){
      return artist.get("name");
    })

    $(".typeahead").typeahead({
      hint: true,
      highlight: true
    },
    {
      name: 'artists',
      limit: 10,
      source: this.substringMatcher(artistNames)
    });

    return this;
  },

  substringMatcher: function(artistNames){
    return function findMatches(q, cb) {

      var matches, substrRegex;

      // an array that will be populated with substring matches
      matches = [];

      // regex used to determine if a string contains the substring `q`
      substrRegex = new RegExp(q, 'i');

      // iterate through the pool of strings and for any string that
      // contains the substring `q`, add it to the `matches` array
      Backbone.$.each(artistNames, function(i, str){
        if (substrRegex.test(str)) {
          matches.push(str);
        }
      });

      cb(matches);
    };
  },

  submitSong: function(event){
    event.preventDefault();

    var title = this.$("#title").val();
    var artist = this.$("#artist").val();
    var contents = this.$("#contents").val();
    var file = this.$("#song-image")[0].files[0];

    var formData = new FormData();
    formData.append("song[title]", title);
    formData.append("song[artist_name]", artist);
    formData.append("song[contents]", contents);
    formData.append("song[image]", file);

    this.model.saveFormData( formData, {
      success: function(){
       Savant.router.navigate("/#songs/" + this.model.id, {trigger: true})
      }.bind(this),

       error: function (model, response) {
         $(".errors").empty()
         response.responseJSON.forEach(function(error){
           $(".errors").append(error + "<br>");
         }.bind(this))
       }.bind(this)
    })
  }
})
