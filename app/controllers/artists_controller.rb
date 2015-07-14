class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def edit
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to root_url
    else
      render "artists/new"
    end
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :description)
  end


end
