Savant.Views.EditLyrics = Backbone.View.extend({
  template: JST['songs/editLyrics'],

  events: {
    "click .cancel-edit":"cancelEdit",
    "click .submit-edit":"submitEdit"
  },

  render: function () {
    this.$el.html(this.template({ song: this.model }));
    return this;
  },

  cancelEdit: function () {
    this.trigger("cancelEdit");
  },

  submitEdit: function (event) {
    var newContents = $(".song-edit-textarea").val();
    this.model.set("contents", newContents);
    this.model.save();
    this.trigger("submitEdit");
  }
})
