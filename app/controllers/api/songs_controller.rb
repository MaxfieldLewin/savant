class Api::SongsController < ApplicationController

  def edit
  end

  def update
  end

  def destroy
  end

  def show
    @song = Song.includes(:artist).find(params[:id])
  end

  def index
    @songs = Song.includes(:artist).find_by_sql("SELECT * FROM songs ORDER BY RANDOM() LIMIT 10")
  end

  private
    def song_params
      params.require(:song).permit(:artist_id, :title, :description, :contents, :image_id)
    end
end
