class Api::AnnotationsController < ApplicationController

  def create
    @annotation = Annotation.new(annotation_params)
    if @annotation.save
      render :create
    else
      render json: @annotation.errors.full_messages, status: 401
    end
  end

  private
    def annotation_params
      params.require(:annotation).permit(:song_fragment_id, :contents, :image)
    end

end
