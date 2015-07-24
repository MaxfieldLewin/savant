Savant.Views.NewComment = Backbone.View.extend({
  template: JST['comments/newComment'],
  tagName: "form",

  events: {
    "click .new-comment-submit":"submitComment"
  },

  initialize: function(options){
    this.commentableInfo = options.commentableInfo;
    this.model = new Savant.Models.Comment();
  },

  render: function(){
    this.$el.html(this.template());
    return this;
  },

  submitComment: function(event){
    event.preventDefault();
    var contents = this.$("#new-comment-contents").val();
    var file = this.$("#new-comment-image")[0].files[0];

    var formData = new FormData();
    formData.append("comment[contents]", contents);
    formData.append("comment[commentable_type]", this.commentableInfo.commentableType);
    formData.append("comment[commentable_id]", this.commentableInfo.commentableId);

    if (file){
      formData.append("comment[image]", file);
    }

    this.model.saveFormData( formData, {
      success: function(){
       this.collection.add(this.model)
     }.bind(this),

       error: function (model, response) {
         this.$(".errors").empty()
         response.responseJSON.forEach(function(error){
           this.$(".errors").append(error + "<br>");
         }.bind(this))
       }.bind(this)
    })
    }
})
