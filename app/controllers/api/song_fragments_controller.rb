class Api::SongFragmentsController < ApplicationController

  def create
    @song_fragment = SongFragment.new(song_fragment_params)
    if @song_fragment.save
      render :create
    else
      render json: @song_fragment.errors.full_messages, status: 401
    end
  end

  def update
  end

  def destroy
    @song_fragment = SongFragment.find(params[:id]).destroy
    render json: {}
  end

  def show
    @song_fragment = SongFragment.includes(:annotation).find(params[:id])
  end

  private
    def song_fragment_params
      params.require(:song_fragment).permit(:song_id, :offset_start, :offset_end)
    end
end
