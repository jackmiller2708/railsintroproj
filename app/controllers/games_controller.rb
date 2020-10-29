class GamesController < ApplicationController
  def index
    @game = Game.all.page params[:page]
  end

  def show
    @game = Game.find(params[:id])
  end
end
