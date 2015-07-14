class StaticPagesController < ApplicationController

  def root
    @artists = Artist.all
    @songs = Song.all
  end

end
