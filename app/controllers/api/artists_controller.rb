class Api::ArtistsController < ApplicationController

  def update
  end

  def show
    @artist = Artist.includes(:songs).find(params[:id])
  end

  def index
    @artists = Artist.all
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :description, :verified_user_id, :image)
  end

end
