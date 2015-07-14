class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to root_url
    else
      render "artists/new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end

  def index
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :description, :verified_user_id, :image_id)
  end


end
