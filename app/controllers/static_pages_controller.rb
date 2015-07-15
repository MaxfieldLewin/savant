class StaticPagesController < ApplicationController

  def root
    @songs = Song.includes(:artist).all.shuffle.take(10)
  end

end
