class Api::GenresController < ApplicationController

  def show

  end

  def index
    @genres = Genre.all
  end

end
