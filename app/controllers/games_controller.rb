class GamesController < ApplicationController
  def index
    @game = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end
end
