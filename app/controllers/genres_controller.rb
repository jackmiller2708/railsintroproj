class GenresController < ApplicationController
  def index
    @genre = Genre.all.page params[:page]
  end

  def show
    @genre = Game.where(genre_id: params[:id])
  end
end
