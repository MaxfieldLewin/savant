Savant.Views.ShowArtist = Backbone.CompositeView.extend({
  template: JST['artists/showArtist'],
  detailsSelector: ".artist-details-container",

  initialize: function(){
    this.listenTo(this.model, "sync", this.render);
  },

  render: function(){

    var imageUrl = false;
    if (this.model.has("image_urL")){
      imageUrl = this.model.escape("image_url")
    }

    this.$el.html(this.template({ artist: this.model, songs: this.model.songs(), imageUrl: imageUrl }));
    var descriptionView = new Savant.Views.ShowArtistDescription({ model: this.model })
    this.addSubview(this.detailsSelector, descriptionView);
    return this;
  }

})
