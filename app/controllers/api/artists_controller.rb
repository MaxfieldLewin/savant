class Api::ArtistsController < ApplicationController

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      render :show
    else
      render json: @artist.errors.full_messages, status: 401
    end
  end

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
    params.require(:artist).permit(:name, :description, :image_id, :verified_user_id)
  end

end
