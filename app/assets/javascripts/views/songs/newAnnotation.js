Savant.Views.NewAnnotation = Backbone.View.extend({
  template: JST['songs/newAnnotation'],
  tagName: "section class='lyrics-details new-annotation'",

  events: {
    "submit .annotation-form":"submitAnnotation",
    "click #cancel-annotation":"cancelAnnotation"
  },

  initialize: function(options){
    this.fragment = options.fragment;
    this.model = new Savant.Models.Annotation();
  },

  render: function(){
    this.$el.html(this.template());
    return this;
  },

  submitAnnotation: function(event){
    event.preventDefault();

    var song_fragment_id = this.fragment.id
    var contents = this.$("#annotation-contents").val();
    var file = this.$("#annotation-image")[0].files[0];

    var formData = new FormData();
    formData.append("annotation[song_fragment_id]", song_fragment_id);
    formData.append("annotation[contents]", contents);
    if (file){
      formData.append("annotation[image]", file);
    }

    this.model.saveFormData( formData, {
      success: function(){
        this.fragment._annotation = this.model;
        this.collection.add(this.fragment, {merge: true});
        this.$el.trigger("submitNewAnnotation");
      }.bind(this),

       error: function (model, response) {
         this.cancelAnnotation()
       }.bind(this)
    })
  },

  cancelAnnotation: function(event){
    event.preventDefault();
    this.fragment.destroy();
    this.$el.trigger("cancelNewAnnotation");
  }
})
