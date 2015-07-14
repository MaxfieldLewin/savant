class SongsController < ApplicationController

  def new
    @artists = Artist.all
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to root_url
    else
      @artists = Artist.all
      render :new
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
    def song_params
      params.require(:song).permit(:artist_id, :title, :description, :contents, :image_id)
    end
end
