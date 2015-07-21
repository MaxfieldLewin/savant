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
    attrs = { contents: $(event.currentTarget).find(".annotation-textarea").val(),
              song_fragment_id: this.fragment.id };
    this.model.save(attrs, {
      success: function(){
        this.fragment._annotation = this.model;
        this.collection.add(this.fragment, {merge: true});
        this.$el.trigger("submitNewAnnotation");
      }.bind(this)
    })
  },

  cancelAnnotation: function(event){
    event.preventDefault();
    this.fragment.destroy();
    this.$el.trigger("cancelNewAnnotation");
  }
})
