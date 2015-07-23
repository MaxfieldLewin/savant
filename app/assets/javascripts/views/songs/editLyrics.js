Savant.Views.EditLyrics = Backbone.View.extend({
  template: JST['songs/editLyrics'],

  events: {
    "click .cancel-edit":"cancelEdit",
    "click .submit-edit":"submitEdit",
    "keyup":"adjustEditBoxHeight",
    "keydown":"adjustEditBoxHeight"
  },

  render: function () {
    this.$el.html(this.template({ song: this.model }));
    this.adjustEditBoxHeight()
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
  },

  adjustEditBoxHeight: function(){
    var tempScrollTop = $(window).scrollTop();
    var editBox = $(".song-edit-textarea")[0];
    editBox.style.height = "1px";
    editBox.style.height = (editBox.scrollHeight) + "px";
    $(window).scrollTop(tempScrollTop);
  }
})
