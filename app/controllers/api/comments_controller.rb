class Api::CommentsController < ApplicationController

  def create
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      render :show
    else
      render json: @comment.errors.full_messages, status: 401
    end
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
