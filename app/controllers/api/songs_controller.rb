class Api::SongsController < ApplicationController

  def create
    @artist = Artist.find_by(name: params[:song][:artist_name])
    if @artist.nil?
      @artist = Artist.create!(name: params[:song][:artist_name])
    end

    @song = @artist.songs.build(song_params)
    if @song.save
      render :show
    else
      render json: @song.errors.full_messages, status: 401
    end
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(song_params)
      render :show
    else
      render json: @song.errors.full_messages, status: 401
    end
  end

  def destroy
  end

  def show
    @song = Song.includes(:artist).find(params[:id])
  end

  def index
    @songs = Song.includes(:artist).all
    # @songs = Song.includes(:artist).all.shuffle.take(10);
    # @songs = Song.includes(:artist).find_by_sql("SELECT * FROM songs ORDER BY RANDOM() LIMIT 10")
  end

  private
    def song_params
      params.require(:song).permit(:title, :description, :contents, :image_id)
    end
end
