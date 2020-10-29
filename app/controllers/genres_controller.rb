class GenresController < ApplicationController
  def index
    @genre = Genre.all
  end

  def show
    @genre = Game.where(genre_id: params[:id])
  end
end
