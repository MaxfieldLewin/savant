class Api::SongFragmentsController < ApplicationController

  def create
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
    def song_fragment_params
      params.require(:song_fragment).permit(:song_id, :offset)
    end
end
