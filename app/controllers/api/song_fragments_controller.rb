class Api::SongFragmentsController < ApplicationController

  def create

  end

  def update
  end

  def destroy
  end

  def show
    @song_fragment = SongFragment.includes(:annotation).find(params[:id])
  end

  private
    def song_fragment_params
      params.require(:song_fragment).permit(:song_id, :offset_start, :offset_end)
    end
end
