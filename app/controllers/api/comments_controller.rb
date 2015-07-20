class Api::CommentsController < ApplicationController

  def create
  end

  def destroy
  end

  def update
  end

  def show
  end

  def index
  end

  private
    def comment_params
      params.require(:comment).permit(:contents, :commentable_id, :commentable_type, :image)
    end
end
