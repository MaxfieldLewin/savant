class StaticPagesController < ApplicationController

  def root
    @songs = Song.includes(:artist).all.limit(10)
  end

end
