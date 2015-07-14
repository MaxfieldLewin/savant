Api::SongsController < ApplicationController

  def edit
  end

  def update
  end

  def destroy
  end

  def show
    @song = Song.find(params[:id])
  end

  def index
    @song = Song.all
  end

  private
    def song_params
      params.require(:song).permit(:artist_id, :title, :description, :contents, :image_id)
    end
end
