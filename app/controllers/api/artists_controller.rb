class Api::ArtistsController < ApplicationController

  def edit
  end

  def update
  end

  def show
    @artist = Artist.includes(:songs).find(params[:id])
  end

  def index
    @artist == Artist.all
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :description, :image_id, :verified_user_id)
  end

end
